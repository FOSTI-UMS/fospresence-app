// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fospresence/features/participant/presentation/bloc/participant/participant_bloc.dart';

import '../../../../../config/routes/route_name.dart';
import '../../../../../core/constants/colors.dart';

class ScanButton extends StatefulWidget {
  final ScrollController scrollController;
  bool isBtnShown;
  ScanButton(
      {super.key, required this.scrollController, required this.isBtnShown});

  @override
  State<ScanButton> createState() => _ScanButtonState();
}

class _ScanButtonState extends State<ScanButton> {
  @override
  void initState() {
    super.initState();

    widget.scrollController.addListener(() {
      if (widget.scrollController.position.userScrollDirection ==
              ScrollDirection.forward ||
          widget.scrollController.offset == 0) {
        widget.isBtnShown = false;
      } else {
        widget.isBtnShown = true;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 300),
      bottom: widget.isBtnShown ? -50 : 15,
      width: MediaQuery.sizeOf(context).width,
      child: Center(
        child: Container(
          width: 180,
          height: 50,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: gradientColorLeftToRight(context)),
            border: globalBorder(context),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                height: 180,
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.all(10),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Scan QR Code"),
                    SizedBox(width: 5),
                    Icon(Icons.qr_code_2_rounded, size: 20)
                  ],
                ),
              ),
              BlocBuilder<ParticipantBloc, ParticipantState>(
                bloc: BlocProvider.of<ParticipantBloc>(context),
                builder: (context, state) {
                  return Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      onTap: state.isLoading
                          ? () {}
                          : () => Navigator.pushNamed(
                              context, RouteName.qrCodeScannerScreen),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
