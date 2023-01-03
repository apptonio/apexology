import 'package:apexology/constants/endpoints.dart';
import 'package:apexology/constants/numbers.dart';
import 'package:apexology/constants/text_styles.dart';
import 'package:apexology/services/connectivity_service.dart';
import 'package:apexology/shared/snackbars.dart';
import 'package:apexology/shared/fades.dart';
import 'package:apexology/shared/dividers.dart';
import 'package:apexology/shared/rich_text.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
import 'package:apexology/screens/landing/landing_controller.dart';

class LandingCard extends StatelessWidget {
  LandingCard({super.key});

  final controller = Get.put(LandingController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Numbers().globalHorizontalMargin.w),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(Numbers().globalBorderRadius).r),
          child: SizedBox(
            child: Padding(
              padding: EdgeInsets.all(Numbers().globalHorizontalPadding.r),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'welcomeToApexology'.tr,
                    style: MyTextStyles.header,
                  ),
                  SizedBox(height: Numbers().sb10.h),
                  MyFades().landingCardGuide(),
                  SizedBox(height: Numbers().sb20.h),
                  MyFades().landingCardEmail(),
                  MyDividers.landingCardDivider(),
                  SignInButton(
                    Buttons.Google,
                    text: 'continueWithGoogle'.tr,
                    onPressed: () {
                      if (ConnectivityService.connectionState !=
                          ConnectivityResult.none) {
                        controller.signInWithGoogle();
                      } else {
                        MySnackbars.showErrorSnackbar(message: 'noInternet'.tr);
                      }
                    },
                  ),
                  SizedBox(height: Numbers().sb10.h),
                  MyRichText(
                      normalText: 'privacyPolicy1'.tr,
                      normalTextStyle: MyTextStyles.bodySmall,
                      linkText: 'privacyPolicy2'.tr,
                      linkTextStyle: MyTextStyles.linkSmall,
                      action: () => controller.launchMyUrlOnTap(
                            endpoint: MyEndpoints.privacyPolicy,
                          ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
