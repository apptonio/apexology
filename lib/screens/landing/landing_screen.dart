import 'dart:math';

import 'package:apexology/constants/assets.dart';
import 'package:apexology/screens/landing/landing_controller.dart';
import 'package:apexology/widgets/landing/login_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LandingController());

    return Scaffold(
      body: Center(
        child: Obx(() => Container(
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(controller
                    .splashList[controller.splashIndex.value]),
                fit: BoxFit.cover),
          ),
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black26, Colors.black87])),
            child: SafeArea(child: LoginCard()),
          ),
        )),

        // Images from Alpha Coders website, contribution to AlphaSystem
        // https://alphacoders.com/users/profile/18905

      ),
    );
  }
}
