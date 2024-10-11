import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fospresence/core/commons/widgets/card_shimmer.dart';
import 'package:fospresence/core/commons/widgets/event_bottom_sheet.dart';
import 'package:fospresence/core/constants/font.dart';
import 'package:fospresence/features/event/presentation/bloc/event/event_bloc.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/routes/route_name.dart';
import '../../../../../core/commons/widgets/custom_toast_w_border.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../my_app.dart';
import '../../../domain/entities/event/event_entity.dart';

class EventListView extends StatefulWidget {
  const EventListView({super.key});

  @override
  State<EventListView> createState() => _EventListViewState();
}

class _EventListViewState extends State<EventListView> {
  late final EventBloc _eventBloc;
  late final GlobalKey<FormState> _formKeyDialog;
  late final TextEditingController _edtPassDialog;
  late final FocusNode _focusNodeDialog;
  String? formattedDatetime;

  @override
  void initState() {
    super.initState();
    _eventBloc = BlocProvider.of<EventBloc>(context)
      ..add(const EventEvent.getEvents());
    _formKeyDialog = GlobalKey<FormState>();
    _edtPassDialog = TextEditingController();
    _focusNodeDialog = FocusNode();
  }

  @override
  void dispose() {
    _edtPassDialog.dispose();
    _focusNodeDialog.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      removeTop: true,
      context: context,
      child: BlocBuilder<EventBloc, EventState>(
        bloc: _eventBloc,
        builder: (context, state) {
          List<EventEntity> eventList =
              state.isLoading ? [] : state.searchEventResult;
          int eventListLength = state.isLoading ? 5 : eventList.length;
          if (!state.isLoading && eventList.isEmpty && state.whose == null) {
            return Text(
              "Proker tidak ditemukan",
              textAlign: TextAlign.center,
              style: textWhite14.copyWith(color: Colors.grey),
            );
          } else if (!state.isLoading &&
              eventList.isEmpty &&
              state.whose != null) {
            if (state.whose == Wife.r) {
              return _buildContainer(
                  context, "assets/images/dududu.png", Wife.r);
            } else if (state.whose == Wife.j) {
              return _buildContainer(
                  context, "assets/images/mantap.jpg", Wife.j);
            } else {
              return _buildContainer(context, "assets/images/hehe.jpg", Wife.f);
            }
          }
          return Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: eventListLength,
              separatorBuilder: (context, index) => const SizedBox(height: 5),
              itemBuilder: (context, index) => state.isLoading
                  ? CardShimmer(index: index)
                  : _buildEventCard(index, eventListLength, context, state),
            ),
          );
        },
      ),
    );
  }

  Padding _buildEventCard(
      int index, int eventListLength, BuildContext context, EventState state) {
    EventEntity selectedEvent = state.searchEventResult[index];
    String formattedDatetime =
        DateFormat('EEEE, dd MMM yyyy', 'id_ID').format(selectedEvent.datetime);
    return Padding(
      padding: EdgeInsets.only(
          bottom: index == eventListLength - 1 ? 10 : 0, right: 8, left: 8),
      child: GestureDetector(
        onTap: () {
          _eventBloc.add(EventEvent.selectedEventPressed(event: selectedEvent));
          Navigator.pushNamed(context, RouteName.detailEventScreen);
        },
        child: Container(
          height: 100,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            border: globalBorder(context),
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.white.withOpacity(0.9),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: gradientColorLeftToRight(context),
            ),
          ),
          child: Center(
            child: ListTile(
              title: Text(
                selectedEvent.name,
                maxLines: 2,
                style: textWhite18.copyWith(
                    fontWeight: FontWeight.w700,
                    overflow: TextOverflow.ellipsis),
              ),
              subtitle: Text(formattedDatetime, style: textWhite12),
              trailing: GestureDetector(
                onTap: () {
                  _eventBloc.add(
                      EventEvent.selectedEventPressed(event: selectedEvent));
                  EventBottomSheet.showSheet(
                      context: context,
                      formKey: _formKeyDialog,
                      focusNode: _focusNodeDialog,
                      edtPass: _edtPassDialog);
                },
                child: SvgPicture.asset(
                  "assets/svg/more_vert.svg",
                  colorFilter:
                      ColorFilter.mode(iconSvgColor(context), BlendMode.srcIn),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector _buildContainer(
      BuildContext context, String image, Wife whose) {
    return GestureDetector(
      onTap: () {
        switch (whose) {
          case Wife.r:
            _launchURL("https://www.instagram.com/raflisilehu_/");
          case Wife.j:
            _launchURL("https://www.instagram.com/josutomaru/");
          case Wife.f:
            _launchURL("https://www.instagram.com/mfl__4/");
          default:
            fToast.showToast(
              child: const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: CustomToastWithBorder(
                    message: "Halo ini kami dari Overlogic", isSuccess: true),
              ),
              gravity: ToastGravity.BOTTOM,
            );
        }
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1.5, color: Colors.white)),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(image, fit: BoxFit.cover)),
      ),
    );
  }

  void _launchURL(String stringUrl) async {
    final url = Uri.parse(stringUrl);
    if (await launchUrl(url)) {
    } else {
      fToast.showToast(
        child: const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: CustomToastWithBorder(
              message: "Halo ini kami dari Overlogic", isSuccess: true),
        ),
        gravity: ToastGravity.BOTTOM,
      );
    }
  }
}
