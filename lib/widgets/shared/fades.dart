import 'package:apexology/screens/landing/landing_controller.dart';
import 'package:apexology/widgets/landing/landing_card_form.dart';
import 'package:apexology/widgets/shared/buttons.dart';
import 'package:apexology/widgets/shared/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFades {
  final controller = Get.put(LandingController());

  landingCardGuide() => Obx(() => AnimatedCrossFade(
      firstChild: MyTexts.chooseOptions(),
      secondChild: AnimatedCrossFade(
          firstChild: MyTexts().signUp(),
          secondChild: MyTexts().login(),
          crossFadeState: controller.signUp.value
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
          duration: const Duration(milliseconds: 300)),
      crossFadeState: controller.continueWithEmail.value
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 300)));

  landingCardEmail() => Obx(() => AnimatedCrossFade(
      firstChild: MyButtons().continueWithEmail(),
      secondChild: LandingCardForm(),
      crossFadeState: controller.continueWithEmail.value
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 300)));

  emailOption() => Obx(() => AnimatedCrossFade(
      firstChild: MyButtons().loginWithEmail(),
      secondChild: MyButtons().signupWithEmail(),
      crossFadeState: controller.signUp.value
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 300)));
}
