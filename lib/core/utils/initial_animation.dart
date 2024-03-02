import 'package:flutter/material.dart';

class InitialAnimation {
  final int animationDuration;
  bool animationIsPlaying;
  InitialAnimation(
      {required this.animationDuration, required this.animationIsPlaying});

  Future<void> playInitialAnimation({required VoidCallback setState}) async {
    await Future.delayed(Duration(microseconds: animationDuration));
    animationIsPlaying = false;
    setState();
  }
}
