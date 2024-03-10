import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fospresence/core/commons/widgets/card_shimmer.dart';
import 'package:fospresence/core/commons/widgets/event_bottom_sheet.dart';
import 'package:fospresence/core/constants/colors.dart';
import 'package:fospresence/core/constants/font.dart';
import 'package:fospresence/features/event/presentation/bloc/event/event_bloc.dart';

import '../../../../../config/routes/route_name.dart';
import '../../../../../core/commons/utils/initial_animation.dart';
import '../../../../../core/constants/helper.dart';
import '../../../../../core/di/injection_container.dart';

class EventCard extends StatefulWidget {
  const EventCard({super.key});

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  late final InitialAnimation _initialAnimation;
  late final EventBloc _eventBloc;

  Future<void> _playAnimation() async => await _initialAnimation
      .playInitialAnimation(setState: () => setState(() {}));

  @override
  void initState() {
    super.initState();
    _initialAnimation = sl<InitialAnimation>();
    _playAnimation();
    _eventBloc = BlocProvider.of<EventBloc>(context)
      ..add(const EventEvent.getEvents());
  }

  @override
  void dispose() {
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
          int eventListLength = state.isLoading
              ? 5
              : state.eventList
                  .fold(() => 0, (a) => a.fold((l) => 0, (r) => r.length));
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

  FadeInLeft _buildContent(
      int index, int eventListLength, BuildContext context, EventState state) {
    return FadeInLeft(
      from: _initialAnimation.animationIsPlaying ? 500 : 0,
      duration: Duration(
          milliseconds: _initialAnimation.animationIsPlaying
              ? _initialAnimation.animationDuration + 600 * index
              : 0),
      child: Padding(
        padding: EdgeInsets.only(bottom: index == eventListLength - 1 ? 10 : 0),
        child: GestureDetector(
          onTap: () =>
              Navigator.pushNamed(context, RouteName.detailEventScreen),
          child: Container(
            height: 100,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              border: globalWhiteBorder,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20)),
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
                  state.eventList.fold(
                      () => "", (a) => a.fold((l) => "", (r) => r[index].name)),
                  style: textWhite18.copyWith(fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                    "${state.eventList.fold(() => "", (a) => a.fold((l) => "", (r) => r[index].datetime))}",
                    style: textWhite12),
                trailing: GestureDetector(
                  onTap: () => EventBottomSheet.showSheet(context),
                  child: SvgPicture.asset("assets/svg/more_vert.svg"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
