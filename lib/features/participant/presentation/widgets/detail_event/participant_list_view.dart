import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fospresence/core/commons/widgets/card_shimmer.dart';
import 'package:fospresence/core/constants/colors.dart';
import 'package:fospresence/core/constants/font.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';
import 'package:fospresence/features/participant/presentation/bloc/participant/participant_bloc.dart';

import '../../../../../core/commons/widgets/confirm_password_dialog.dart';
import '../../../domain/entities/participant/participant_entity.dart';

class ParticipantListView extends StatefulWidget {
  final EventEntity selectedEvent;
  const ParticipantListView({super.key, required this.selectedEvent});

  @override
  State<ParticipantListView> createState() => _ParticipantListViewState();
}

class _ParticipantListViewState extends State<ParticipantListView> {
  late final ParticipantBloc _participantBloc;
  late final TextEditingController _edtPassDialog;
  late final GlobalKey<FormState> _formKeyDialog;
  late final FocusNode _focusNodeDialog;
  String? formattedDatetime;

  @override
  void initState() {
    super.initState();
    _participantBloc = BlocProvider.of<ParticipantBloc>(context)
      ..add(ParticipantEvent.getParticipants(event: widget.selectedEvent));
    _edtPassDialog = TextEditingController();
    _focusNodeDialog = FocusNode();
    _formKeyDialog = GlobalKey<FormState>();
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
      child: BlocBuilder<ParticipantBloc, ParticipantState>(
        bloc: _participantBloc,
        builder: (context, state) {
          List<ParticipantEntity> participantList =
              state.isLoading ? [] : state.searchParticipantResult;
          int participantListLength =
              state.isLoading ? 5 : participantList.length;
          if (!state.isLoading && participantList.isEmpty) {
            return Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                "Peserta tidak ditemukan",
                style: textWhite14.copyWith(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            );
          }
          return ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: participantListLength,
            separatorBuilder: (context, index) => const SizedBox(height: 5),
            itemBuilder: (context, index) => state.isLoading
                ? CardShimmer(index: index)
                : _buildParticipantListView(
                    index, participantListLength, context, state),
          );
        },
      ),
    );
  }

  Padding _buildParticipantListView(int index, int participantListLength,
      BuildContext context, ParticipantState state) {
    ParticipantEntity? selectedParticipant =
        state.searchParticipantResult[index];
    return Padding(
      padding: EdgeInsets.only(
          bottom: index == participantListLength - 1 ? 10 : 0,
          right: 8,
          left: 8),
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
              selectedParticipant.name,
              maxLines: 2,
              style: textWhite18.copyWith(
                  fontWeight: FontWeight.w700, overflow: TextOverflow.ellipsis),
            ),
            subtitle: Text(
                "${selectedParticipant.email}\n${selectedParticipant.division} (${selectedParticipant.role})",
                style: textWhite12),
            trailing: GestureDetector(
              onTap: () {
                _participantBloc.add(
                    ParticipantEvent.selectedParticipantPressed(
                        participant: selectedParticipant));
                ConfirmPassDialog.showConfirmDialog(
                    context: context,
                    onConfirm: (context) => _participantBloc.add(
                        ParticipantEvent.deleteParticipantPressed(
                            participant: selectedParticipant,
                            event: widget.selectedEvent)),
                    formKey: _formKeyDialog,
                    edtPass: _edtPassDialog,
                    focusNode: _focusNodeDialog,
                    isParticipant: true);
              },
              child: const Icon(Icons.delete_outlined,
                  weight: 0.1, color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
