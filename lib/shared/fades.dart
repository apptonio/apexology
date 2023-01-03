import 'package:apexology/constants/text_styles.dart';
import 'package:apexology/screens/landing/landing_controller.dart';
import 'package:apexology/screens/landing/widgets/landing_card_form.dart';
import 'package:apexology/shared/rich_text.dart';
import 'package:apexology/shared/snackbars.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';

import '../../services/connectivity_service.dart';

class MyFades {
  final controller = Get.put(LandingController());

  landingCardGuide() => Obx(() => AnimatedCrossFade(
      firstChild: Text('chooseOptions'.tr, style: MyTextStyles.body),
      secondChild: AnimatedCrossFade(
          firstChild: MyRichText(
              normalText: 'noAccount'.tr,
              normalTextStyle: MyTextStyles.body,
              linkText: 'signUp'.tr,
              linkTextStyle: MyTextStyles.link,
              action: () => controller.signUp.value = true),
          secondChild: MyRichText(
              normalText: 'yesAccount'.tr,
              normalTextStyle: MyTextStyles.body,
              linkText: 'logIn'.tr,
              linkTextStyle: MyTextStyles.link,
              action: () => controller.signUp.value = false),
          crossFadeState: controller.signUp.value
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
          duration: const Duration(milliseconds: 300)),
      crossFadeState: controller.continueWithEmail.value
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 300)));

  landingCardEmail() => Obx(() => AnimatedCrossFade(
      firstChild: SignInButton(
        Buttons.Email,
        text: 'continueWithEmail'.tr,
        onPressed: () {
          controller.continueWithEmail.value = true;
        },
      ),
      secondChild: LandingCardForm(),
      crossFadeState: controller.continueWithEmail.value
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 300)));

  emailOption() => Obx(() => AnimatedCrossFade(
      firstChild:
          SignInButton(Buttons.Email, text: 'loginWithEmail'.tr, onPressed: () {
        if (ConnectivityService.connectionState != ConnectivityResult.none) {
          controller.loginWithEmail();
        } else {
          MySnackbars.showErrorSnackbar(message: 'noInternet'.tr);
        }
      }),
      secondChild: SignInButton(
        Buttons.Email,
        text: 'signupWithEmail'.tr,
        onPressed: () {
          if (ConnectivityService.connectionState != ConnectivityResult.none) {
            controller.signUpWithEmail();
          } else {
            MySnackbars.showErrorSnackbar(message: 'noInternet'.tr);
          }
        },
      ),
      crossFadeState: controller.signUp.value
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 300)));
}
