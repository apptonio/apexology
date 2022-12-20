import 'package:apexology/screens/landing/landing_controller.dart';
import 'package:get/get.dart';
import 'package:apexology/services/connectivity_service.dart';
import 'package:apexology/widgets/shared/snackbars.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class MyButtons {
  final controller = Get.put(LandingController());

  continueWithGoogle() => SignInButton(
        Buttons.Google,
        text: 'continueWithGoogle'.tr,
        onPressed: () {
          if (ConnectivityService.connectionState != ConnectivityResult.none) {
            controller.signInWithGoogle();
          } else {
            MySnackbars.showErrorSnackbar(message: 'noInternet'.tr);
          }
        },
      );

  continueWithEmail() => SignInButton(
        Buttons.Email,
        text: 'continueWithEmail'.tr,
        onPressed: () {
          controller.continueWithEmail.value = true;
        },
      );

  loginWithEmail() =>
      SignInButton(Buttons.Email, text: 'loginWithEmail'.tr, onPressed: () {
        if (ConnectivityService.connectionState != ConnectivityResult.none) {
          controller.loginWithEmail();
        } else {
          MySnackbars.showErrorSnackbar(message: 'noInternet'.tr);
        }
      });

  signupWithEmail() => SignInButton(
        Buttons.Email,
        text: 'signupWithEmail'.tr,
        onPressed: () {
          if (ConnectivityService.connectionState != ConnectivityResult.none) {
            controller.signUpWithEmail();
          } else {
            MySnackbars.showErrorSnackbar(message: 'noInternet'.tr);
          }
        },
      );
}
