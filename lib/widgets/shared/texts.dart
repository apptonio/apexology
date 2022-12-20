import 'package:apexology/constants/endpoints.dart';
import 'package:apexology/constants/text_styles.dart';
import 'package:apexology/screens/landing/landing_controller.dart';
import 'package:apexology/services/connectivity_service.dart';
import 'package:apexology/widgets/shared/snackbars.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyTexts {
  final controller = Get.put(LandingController());

  static welcomeToApexology() => Text(
        'welcomeToApexology'.tr,
        style: MyTextStyles.header,
      );

  static chooseOptions() => Text('chooseOptions'.tr, style: MyTextStyles.body);

  static or() => Text(
        "OR",
        style: MyTextStyles.body,
      );

  static imageContribution() => RichText(
        text: TextSpan(
          text: 'imageContribution'.tr,
          style: MyTextStyles.bodySmallWhite,
          children: [
            TextSpan(
              text: 'imageContribution2'.tr,
              style: MyTextStyles.linkSmallWhite,
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  if (ConnectivityService.connectionState !=
                      ConnectivityResult.none) {
                    await launchUrlString(MyEndpoints.landingImagesContribution,
                        mode: LaunchMode.inAppWebView);
                  } else {
                    MySnackbars.showErrorSnackbar(message: 'noInternet'.tr);
                  }
                },
            ),
          ],
        ),
      );

  static privacyPolicy() => RichText(
        text: TextSpan(
          text: 'privacyPolicy1'.tr,
          style: MyTextStyles.bodySmall,
          children: [
            TextSpan(
              text: 'privacyPolicy2'.tr,
              style: MyTextStyles.linkSmall,
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  if (ConnectivityService.connectionState !=
                      ConnectivityResult.none) {
                    await launchUrlString(MyEndpoints.privacyPolicy,
                        mode: LaunchMode.inAppWebView);
                  } else {
                    MySnackbars.showErrorSnackbar(message: 'noInternet'.tr);
                  }
                },
            ),
          ],
        ),
      );

  signUp() => RichText(
        text: TextSpan(
          text: 'noAccount'.tr,
          style: MyTextStyles.body,
          children: [
            TextSpan(
                text: 'signUp'.tr,
                style: MyTextStyles.link,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => controller.signUp.value = true),
          ],
        ),
      );

  login() => RichText(
        text: TextSpan(
          text: 'yesAccount'.tr,
          style: MyTextStyles.body,
          children: [
            TextSpan(
                text: 'logIn'.tr,
                style: MyTextStyles.link,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => controller.signUp.value = false),
          ],
        ),
      );
}
