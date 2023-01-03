import 'package:apexology/constants/endpoints.dart';
import 'package:apexology/widgets/shared/fades.dart';
import 'package:apexology/widgets/shared/dividers.dart';
import 'package:apexology/widgets/shared/rich_text.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
import 'package:apexology/screens/landing/landing_controller.dart';

import '../../constants/text_styles.dart';
import '../../services/connectivity_service.dart';
import '../shared/snackbars.dart';

class LandingCard extends StatelessWidget {
  LandingCard({super.key});

  final controller = Get.put(LandingController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0).r),
          child: SizedBox(
            child: Padding(
              padding: EdgeInsets.all(20.r),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'welcomeToApexology'.tr,
                    style: MyTextStyles.header,
                  ),
                  SizedBox(height: 10.h),
                  MyFades().landingCardGuide(),
                  SizedBox(height: 20.h),
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
                  SizedBox(height: 10.h),
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
