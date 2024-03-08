import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:fospresence/core/constants/font.dart';

class BlurLoading extends StatefulWidget {
  const BlurLoading({super.key});

  @override
  State<BlurLoading> createState() => _BlurLoadingState();
}

class _BlurLoadingState extends State<BlurLoading>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  final double _imageSize = 100;
  String _loadingText = "Loading";

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: true);
    _getLoadingText();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _getLoadingText() async {
    await Future.delayed(const Duration(milliseconds: 500));

    if (mounted) {
      _loadingText = _loadingText.length < 10 ? '$_loadingText.' : 'Loading';
      setState(() {});
    }
    _getLoadingText();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: Container(
          color: Colors.black.withOpacity(0.4),
          child: Center(
            child: Container(
              height: 235,
              width: 235,
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 60),
                  AnimatedBuilder(
                    animation: _animationController,
                    builder: (context, child) {
                      return Transform.scale(
                        scale: 1.0 + _animationController.value * 0.3,
                        child: child,
                      );
                    },
                    child: Container(
                      height: _imageSize,
                      width: _imageSize,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_imageSize),
                        border: Border.all(width: 1, color: Colors.white),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(_imageSize),
                        child: Image.asset(
                          "assets/images/fosti_rectangle_logo.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Text(_loadingText,
                      style: textWhite16.copyWith(fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
