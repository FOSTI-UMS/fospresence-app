import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fospresence/core/commons/widgets/custom_back_button.dart';
import 'package:fospresence/core/commons/widgets/custom_toast.dart';
import 'package:fospresence/core/commons/widgets/custom_toast_w_border.dart';
import 'package:fospresence/core/commons/widgets/fospresence_w_logo.dart';
import 'package:fospresence/core/constants/font.dart';
import 'package:fospresence/features/participant/domain/entities/participant/participant_entity.dart';
import 'package:fospresence/features/participant/presentation/bloc/participant/participant_bloc.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../../../core/constants/colors.dart';
import '../../../event/presentation/bloc/event/event_bloc.dart';
import '../../../my_app.dart';

class QRCodeScannerScreen extends StatefulWidget {
  const QRCodeScannerScreen({super.key});

  @override
  State<StatefulWidget> createState() => _QRCodeScannerScreenState();
}

class _QRCodeScannerScreenState extends State<QRCodeScannerScreen> {
  Barcode? _result;
  QRViewController? _controller;
  final GlobalKey _qrKey = GlobalKey(debugLabel: 'QR');
  bool? _isFlashOn = false;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      _controller!.pauseCamera();
    }
    _controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              primaryColor.withOpacity(0.5),
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.black,
              primaryColor.withOpacity(0.5),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomBackButton(),
                  FosPresenceWithLogo(sizeFostiLogo: 30, textSize: textWhite20),
                  GestureDetector(
                    onTap: () async => await _flipCamera(),
                    child: const SizedBox(
                        width: 30, child: Icon(Icons.flip_camera_ios_rounded)),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    children: [
                      _buildQrView(context),
                      Positioned(
                        top: 20,
                        right: 20,
                        child: GestureDetector(
                          onTap: () async => _toggleFlash(),
                          child: Icon(_isFlashOn!
                              ? Icons.flash_on
                              : Icons.flash_off_rounded),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Scan QR Code",
                      style: textWhite14.copyWith(fontWeight: FontWeight.w600)),
                  const SizedBox(width: 5),
                  const Icon(Icons.qr_code_scanner, size: 20),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    var scanArea = MediaQuery.sizeOf(context).width * 0.8;
    return BlocBuilder<ParticipantBloc, ParticipantState>(
      bloc: BlocProvider.of<ParticipantBloc>(context),
      builder: (context, state) {
        return QRView(
          key: _qrKey,
          onQRViewCreated: _onQRViewCreated,
          overlay: QrScannerOverlayShape(
              borderColor: Colors.white,
              borderRadius: 10,
              borderLength: 30,
              borderWidth: 8,
              cutOutSize: scanArea),
          onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
        );
      },
    );
  }

  Future<void> _createParticipant(List<String> qrCodeConvertResult) async {
    final selectedEvent =
        BlocProvider.of<EventBloc>(context).state.selectedEvent;
    if (qrCodeConvertResult.length == 4) {
      String name = qrCodeConvertResult[0];
      String email = qrCodeConvertResult[1];
      String division = qrCodeConvertResult[2];
      String event = qrCodeConvertResult[3];
      if (event == selectedEvent!.name.toLowerCase()) {
        ParticipantEntity participantData = ParticipantEntity(
            ref: FirebaseFirestore.instance.collection("events").doc(),
            name: name,
            email: email,
            division: division,
            datetime: DateTime.now(),
            eventRaw: selectedEvent.ref.id);
        context.read<ParticipantBloc>().add(
              ParticipantEvent.addParticipantToEvent(
                  event: selectedEvent, participant: participantData),
            );
      } else {
        fToast.showToast(
          child: const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: CustomToastWithBorder(
                message: "Kode QR tidak valid", isSuccess: false),
          ),
          gravity: ToastGravity.BOTTOM,
        );
      }
    } else {
      fToast.showToast(
        child: const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: CustomToastWithBorder(
              message: "Kode QR tidak valid", isSuccess: false),
        ),
        gravity: ToastGravity.BOTTOM,
      );
    }
  }

  Future<void> _onQRViewCreated(QRViewController controller) async {
    setState(() {
      _controller = controller;
    });
    controller.scannedDataStream.listen((scanData) async {
      setState(() {
        _result = scanData;
      });

      List<String> qrCodeConvertResult =
          _result!.code!.toLowerCase().split("-");

      await _createParticipant(qrCodeConvertResult);

      if (mounted) {
        _controller!.dispose();
        Navigator.pop(context);
      }
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    debugPrint('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  Future<void> _flipCamera() async {
    await _controller?.flipCamera();
    final result = await _controller?.getCameraInfo();
    final bool isFrontCamera = result == CameraFacing.front;
    _showToast("Kamera beralih ke ${isFrontCamera ? "depan" : "belakang"}");
    setState(() {});
  }

  Future<void> _toggleFlash() async {
    await _controller?.toggleFlash();
    _isFlashOn = await _controller?.getFlashStatus();
    _showToast("Flash kamera ${_isFlashOn! ? "aktif" : "mati"}");
    setState(() {});
  }

  void _showToast(String message) {
    fToast.showToast(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: CustomToast(message: message),
      ),
      gravity: ToastGravity.BOTTOM,
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}
