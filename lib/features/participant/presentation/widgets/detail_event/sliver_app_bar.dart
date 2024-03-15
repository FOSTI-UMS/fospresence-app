import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fospresence/core/commons/utils/initial_animation.dart';
import 'package:fospresence/core/commons/widgets/shimmer_skelton.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';
import 'package:intl/intl.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/font.dart';
import '../../../../../core/di/injection_container.dart';
import '../../../../event/presentation/bloc/event/event_bloc.dart';
import '../../../domain/entities/participant/participant_entity.dart';
import '../../bloc/participant/participant_bloc.dart';

class DetailEventSliverAppBar extends StatefulWidget {
  final EventEntity selectedEvent;
  const DetailEventSliverAppBar({super.key, required this.selectedEvent});

  @override
  State<DetailEventSliverAppBar> createState() =>
      _DetailEventSliverAppBarState();
}

class _DetailEventSliverAppBarState extends State<DetailEventSliverAppBar> {
  final double _sizeFostiLogo = 20;
  final double _sizeParticipantsCircle = 55;
  late final InitialAnimation _initialAnimation;
  late final ParticipantBloc _participantBloc;

  Future<void> _playAnimation() async => await _initialAnimation
      .playInitialAnimation(setState: () => setState(() {}));

  @override
  void initState() {
    super.initState();
    _participantBloc = BlocProvider.of<ParticipantBloc>(context)
      ..add(ParticipantEvent.getParticipants(event: widget.selectedEvent));
    _initialAnimation = sl<InitialAnimation>();
    _playAnimation();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: primaryColor,
      expandedHeight: 200,
      floating: true,
      automaticallyImplyLeading: false,
      centerTitle: true,
      toolbarHeight: 0.1,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.zero,
        title: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: BlocBuilder<EventBloc, EventState>(
              bloc: BlocProvider.of<EventBloc>(context),
              builder: (context, state) {
                return _buildColumn(context, state);
              },
            ),
          ),
        ),
        background: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Image.asset("assets/images/bg_detail_event.jpg",
                fit: BoxFit.cover, filterQuality: FilterQuality.low),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                    Color.fromARGB(90, 33, 150, 243)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _buildColumn(BuildContext context, EventState state) {
    String formattedDatetime = DateFormat('EEEE, dd MMM yyyy', 'id_ID')
        .format(state.selectedEvent!.datetime);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back_ios,
                size: 20, color: Colors.white)),
        FadeInUp(
          from: _initialAnimation.animationIsPlaying ? 100 : 0,
          duration: Duration(
              milliseconds: _initialAnimation.animationIsPlaying
                  ? _initialAnimation.animationDuration
                  : 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Jumlah Peserta",
                  style: textWhite18.copyWith(fontWeight: FontWeight.w600)),
              Container(
                height: _sizeParticipantsCircle,
                width: _sizeParticipantsCircle,
                margin: const EdgeInsets.only(right: 5),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue.withOpacity(0.3),
                        blurRadius: 12.0,
                        spreadRadius: 8.0),
                  ],
                ),
                child: BlocBuilder<ParticipantBloc, ParticipantState>(
                  bloc: _participantBloc,
                  builder: (context, state) {
                    List<ParticipantEntity> participantList = state.isLoading
                        ? []
                        : state.participantList
                            .fold(() => [], (a) => a.fold((l) => [], (r) => r));
                    return state.isLoading
                        ? ShimmerSkelton(
                            height: MediaQuery.sizeOf(context).height,
                            width: MediaQuery.sizeOf(context).width,
                            borderRadius: 0,
                            isCircle: true,
                          )
                        : Center(
                            child: Text(
                              "${participantList.length}",
                              style: textWhite23.copyWith(
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                  },
                ),
              ),
            ],
          ),
        ),
        FadeInUp(
          from: _initialAnimation.animationIsPlaying ? 100 : 0,
          duration: Duration(
              milliseconds: _initialAnimation.animationIsPlaying
                  ? _initialAnimation.animationDuration + 300
                  : 0),
          child: Row(
            children: [
              Container(
                height: _sizeFostiLogo,
                width: _sizeFostiLogo,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: Colors.white)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(_sizeFostiLogo),
                  child: Image.asset("assets/images/fosti_rectangle_logo.png",
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Text(state.selectedEvent!.name,
                    style: textWhite16.copyWith(
                        fontWeight: FontWeight.w700,
                        overflow: TextOverflow.ellipsis),
                    overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        FadeInUp(
          from: _initialAnimation.animationIsPlaying ? 100 : 0,
          duration: Duration(
              milliseconds: _initialAnimation.animationIsPlaying
                  ? _initialAnimation.animationDuration + 600
                  : 0),
          child: Text(
            formattedDatetime,
            style: textWhite10.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
