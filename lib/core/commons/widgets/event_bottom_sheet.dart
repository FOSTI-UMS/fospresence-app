import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fospresence/features/event/presentation/bloc/event/event_bloc.dart';

import '../../../config/routes/route_name.dart';
import '../../../features/event/domain/entities/event/event_entity.dart';
import '../../../features/my_app.dart';
import '../../constants/colors.dart';
import '../../constants/font.dart';
import '../../constants/pass.dart';
import 'custom_toast_w_border.dart';

class EventBottomSheet {
  EventBottomSheet._();
  static showSheet(
      {required BuildContext context,
      required GlobalKey<FormState> formKey,
      required TextEditingController edtPass,
      required FocusNode focusNode}) {
    return showBottomSheet(
      backgroundColor: Colors.transparent,
      enableDrag: false,
      context: context,
      builder: (context) => Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color:
                    Theme.of(context).colorScheme.background.withOpacity(0.2)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Container(
                  height: MediaQuery.of(context).size.height - 160,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: const SizedBox(),
              ),
              SizedBox(
                height: 160,
                child: CupertinoActionSheet(
                  cancelButton: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Container(
                      decoration: BoxDecoration(
                        border: globalBorder(context),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: gradientColorLeftToRight(context),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("Batal", textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                  actions: [
                    GestureDetector(
                      onTap: () => Navigator.of(context)
                          .pushNamed(RouteName.editEventScreen)
                          .then((_) => Navigator.of(context).pop()),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12.5),
                              topRight: Radius.circular(12.5)),
                          border: globalBorder(context),
                          gradient: LinearGradient(
                            colors: gradientColorLeftToRight(context),
                            end: Alignment.centerLeft,
                            begin: Alignment.centerRight,
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text("Edit", textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _showConfirmDialog(
                          context, formKey, edtPass, focusNode),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(12.5),
                              bottomRight: Radius.circular(12.5)),
                          border: globalBorder(context),
                          gradient: LinearGradient(
                            colors: gradientColorLeftToRight(context),
                            end: Alignment.centerLeft,
                            begin: Alignment.centerRight,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Hapus",
                            textAlign: TextAlign.center,
                            style:
                                textWhite14.copyWith(color: Colors.redAccent),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  static _showConfirmDialog(BuildContext context, GlobalKey<FormState> formKey,
      TextEditingController edtPass, FocusNode focusNode) {
    return showDialog(
      context: context,
      builder: (context) => Theme(
        data: ThemeData.dark(),
        child: AlertDialog(
          elevation: 0,
          backgroundColor: appDarkBgColor,
          content: _buildForm(formKey, focusNode, edtPass, context),
        ),
      ),
    );
  }

  static Form _buildForm(GlobalKey<FormState> formKey, FocusNode focusNode,
      TextEditingController edtPass, BuildContext context) {
    void back() {
      Navigator.pop(context);
      focusNode.unfocus();
      edtPass.clear();
    }

    Future<void> deleteEventPressed(EventEntity selectedEvent) async {
      if (formKey.currentState!.validate()) {
        if (edtPass.text.toLowerCase() == pass) {
          back();
          Navigator.pop(context);
          context
              .read<EventBloc>()
              .add(EventEvent.deleteEventPressed(event: selectedEvent));
        } else {
          back();
          await Future.delayed(
            const Duration(milliseconds: 300),
          );
          fToast.showToast(
            child: const CustomToastWithBorder(
                message: "Password salah", isSuccess: false),
            gravity: ToastGravity.BOTTOM,
          );
        }
      }
    }

    return Form(
      key: formKey,
      child: SizedBox(
        height: 205,
        child: BlocBuilder<EventBloc, EventState>(
          bloc: BlocProvider.of<EventBloc>(context),
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Text.rich(
                  textAlign: TextAlign.center,
                  style: textWhite16,
                  TextSpan(
                    children: [
                      const TextSpan(
                          text: "Apakah Anda yakin untuk menghapus "),
                      TextSpan(
                        text: state.selectedEvent!.name,
                        style: textWhite16.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                      const TextSpan(text: " ?"),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: TextFormField(
                    focusNode: focusNode,
                    controller: edtPass,
                    style: textWhite14,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Wajib diisi";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      hintText: "Ketikkan password...",
                      errorStyle: textDark9.copyWith(color: Colors.redAccent),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            width: 0.8, color: Colors.redAccent),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            width: 0.8, color: Colors.redAccent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 0.2, color: lightGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 0.8, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: Row(
                    children: [
                      Expanded(
                        child: CupertinoDialogAction(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text("Batal",
                              style: textWhite14.copyWith(color: Colors.blue)),
                        ),
                      ),
                      Expanded(
                        child: CupertinoDialogAction(
                          onPressed: () async =>
                              await deleteEventPressed(state.selectedEvent!),
                          child: Text("Hapus",
                              style: textWhite14.copyWith(
                                  color: Colors.redAccent)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
