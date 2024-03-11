import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fospresence/core/constants/colors.dart';
import 'package:fospresence/core/constants/pass.dart';

import '../../../features/my_app.dart';
import '../../constants/font.dart';
import 'custom_toast.dart';

class ConfirmPassDialog {
  ConfirmPassDialog._();

  static showConfirmDialog(
      {required BuildContext context,
      required void Function(BuildContext context) onConfirm,
      required GlobalKey<FormState> formKey,
      required TextEditingController edtPass,
      required FocusNode focusNode}) {
    return showDialog(
      context: context,
      builder: (context) => SizedBox(
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
              height: 100,
              width: MediaQuery.sizeOf(context).width,
              child: Theme(
                data: ThemeData.dark(),
                child: AlertDialog(
                  elevation: 0,
                  backgroundColor: appDarkBgColor,
                  title: Text(
                    "Password",
                    style: textWhite20.copyWith(fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  content: _buildForm(
                      formKey, focusNode, edtPass, onConfirm, context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Form _buildForm(
      GlobalKey<FormState> formKey,
      FocusNode focusNode,
      TextEditingController edtPass,
      void Function(BuildContext context) onConfirm,
      BuildContext context) {
    void back() {
      Navigator.pop(context);
      focusNode.unfocus();
      edtPass.clear();
    }

    Future<void> eventPressed() async {
      if (formKey.currentState!.validate()) {
        if (edtPass.text.toLowerCase() == pass) {
          back();
          onConfirm(context);
        } else {
          back();
          await Future.delayed(
            const Duration(milliseconds: 300),
          );
          fToast.showToast(
            child: const CustomToast(
                message: "Password is wrong", isSuccess: false),
            gravity: ToastGravity.BOTTOM,
          );
        }
      }
    }

    return Form(
      key: formKey,
      child: SizedBox(
        height: 120,
        child: Column(
          children: [
            Expanded(
              child: TextFormField(
                focusNode: focusNode,
                controller: edtPass,
                style: textWhite14,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "You must fill out this form";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  hintText: "Type password...",
                  errorStyle: textDark10.copyWith(color: Colors.redAccent),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(width: 0.8, color: Colors.redAccent),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(width: 0.8, color: Colors.redAccent),
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
            SizedBox(
              width: 200,
              height: 50,
              child: Row(
                children: [
                  Expanded(
                    child: CupertinoDialogAction(
                      onPressed: () => back(),
                      child: Text("Back",
                          style: textWhite14.copyWith(color: Colors.redAccent)),
                    ),
                  ),
                  Expanded(
                    child: CupertinoDialogAction(
                      onPressed: () async => eventPressed(),
                      child: Text("Confirm",
                          style: textWhite14.copyWith(color: Colors.blue)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
