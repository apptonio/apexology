import 'package:apexology/screens/landing/landing_controller.dart';
import 'package:apexology/widgets/landing/landing_carousel.dart';
import 'package:apexology/widgets/landing/landing_overlay.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingScreen extends GetView<LandingController> {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
            child: Stack(
          children: [const LandingCarousel(), LandingOverlay()],
        )));
  }
}
