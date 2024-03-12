import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fospresence/core/commons/widgets/card_shimmer.dart';
import 'package:fospresence/core/commons/widgets/event_bottom_sheet.dart';
import 'package:fospresence/core/constants/colors.dart';
import 'package:fospresence/core/constants/font.dart';
import 'package:fospresence/features/event/presentation/bloc/event/event_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../../config/routes/route_name.dart';
import '../../../../../core/constants/helper.dart';
import '../../../domain/entities/event/event_entity.dart';

class EventCard extends StatefulWidget {
  const EventCard({super.key});

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
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
          List<EventEntity> eventList = state.isLoading
              ? []
              : state.eventList
                  .fold(() => [], (a) => a.fold((l) => [], (r) => r));
          int eventListLength = state.isLoading ? 5 : eventList.length;

          if (!state.isLoading && eventList.isEmpty) {
            return Text("No Events",
                style: textWhite14.copyWith(color: Colors.grey));
          }
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: eventListLength,
                separatorBuilder: (context, index) => const SizedBox(height: 5),
                itemBuilder: (context, index) => state.isLoading
                    ? CardShimmer(index: index)
                    : _buildContent(index, eventListLength, context, state),
              ),
            ),
          );
        },
      ),
    );
  }

  Padding _buildContent(
      int index, int eventListLength, BuildContext context, EventState state) {
    EventEntity? selectedEvent = state.eventList.fold(
      () => null,
      (a) => a.fold((l) => null, (r) => r[index]),
    );
    String formattedDatetime = DateFormat('EEEE, dd MMM yyyy', 'id_ID')
        .format(selectedEvent!.datetime);
    return Padding(
      padding: EdgeInsets.only(bottom: index == eventListLength - 1 ? 10 : 0),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, RouteName.detailEventScreen),
        child: Container(
          height: 100,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            border: globalWhiteBorder,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.white.withOpacity(0.9),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [primaryColor.withOpacity(0.9), Colors.black],
            ),
          ),
          child: Center(
            child: ListTile(
              title: Text(
                selectedEvent.name,
                style: textWhite18.copyWith(fontWeight: FontWeight.w700),
              ),
              subtitle: Text(formattedDatetime, style: textWhite12),
              trailing: GestureDetector(
                onTap: () => EventBottomSheet.showSheet(
                    context: context,
                    selectedEvent: selectedEvent,
                    formKey: _formKeyDialog,
                    focusNode: _focusNodeDialog,
                    edtPass: _edtPassDialog),
                child: SvgPicture.asset("assets/svg/more_vert.svg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
