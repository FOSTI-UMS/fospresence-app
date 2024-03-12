import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fospresence/core/commons/widgets/custom_back_button.dart';
import 'package:fospresence/core/commons/widgets/custom_toast.dart';
import 'package:fospresence/core/commons/widgets/fospresence_w_logo.dart';
import 'package:fospresence/core/constants/font.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

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
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      _controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        _result = scanData;
      });
      if (mounted) {
        _controller!.dispose();
        Navigator.pop(context);
        fToast.showToast(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: CustomToast(message: "${_result!.code}"),
          ),
          gravity: ToastGravity.BOTTOM,
        );
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
    fToast.showToast(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: CustomToast(
            message:
                "Kamera beralih ke ${isFrontCamera ? "depan" : "belakang"}"),
      ),
      gravity: ToastGravity.BOTTOM,
    );
    setState(() {});
  }

  Future<void> _toggleFlash() async {
    await _controller?.toggleFlash();
    _isFlashOn = await _controller?.getFlashStatus();
    fToast.showToast(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: CustomToast(
            message: "Flash kamera ${_isFlashOn! ? "aktif" : "mati"}"),
      ),
      gravity: ToastGravity.BOTTOM,
    );
    setState(() {});
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}
