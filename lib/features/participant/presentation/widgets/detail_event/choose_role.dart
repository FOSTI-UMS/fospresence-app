import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/commons/widgets/confirm_password_dialog.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/font.dart';
import '../../../../event/presentation/bloc/event/event_bloc.dart';
import '../../bloc/participant/participant_bloc.dart';

abstract class ChooseRole {
  ChooseRole._();

  static show(
      BuildContext context,
      ParticipantBloc participantBloc,
      GlobalKey<FormState> formKeyDialog,
      TextEditingController edtPassDialog,
      FocusNode focusNodeDialog) {
    List<String> roleList = ["BPHI", "Peserta", "Panitia"];
    return showDialog(
      context: context,
      builder: (context) => GestureDetector(
        onTap: () => Navigator.pop(context),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: const SizedBox(),
              ),
              SizedBox(
                height: 230,
                width: MediaQuery.sizeOf(context).width,
                child: Theme(
                  data: ThemeData.dark(),
                  child: AlertDialog(
                    elevation: 0,
                    backgroundColor: appDarkBgColor,
                    title: Text(
                      "Pilih role yang ingin diekspor ke excel!",
                      style: textWhite18.copyWith(fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                    content: _buildContainer(roleList, context, participantBloc,
                        formKeyDialog, edtPassDialog, focusNodeDialog),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Container _buildContainer(
      List<String> roleList,
      BuildContext context,
      ParticipantBloc participantBloc,
      GlobalKey<FormState> formKeyDialog,
      TextEditingController edtPassDialog,
      FocusNode focusNodeDialog) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      height: 150,
      child: Column(
        children: List.generate(
          roleList.length,
          (index) => BlocBuilder<EventBloc, EventState>(
            bloc: BlocProvider.of<EventBloc>(context),
            builder: (context, eventState) {
              return GestureDetector(
                onTap: () => ConfirmPassDialog.showConfirmDialog(
                    context: context,
                    onConfirm: (context) => participantBloc.add(
                        ParticipantEvent.addParticipantsToExcel(
                            event: eventState.selectedEvent!,
                            participantRole: roleList[index])),
                    formKey: formKeyDialog,
                    edtPass: edtPassDialog,
                    focusNode: focusNodeDialog,
                    isExcel: true),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom:
                          BorderSide(width: 0.1, color: outlineColor(context)),
                    ),
                  ),
                  child: Center(
                    child: Text(roleList[index], style: textWhite18),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
