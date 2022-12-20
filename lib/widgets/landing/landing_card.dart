import 'package:apexology/widgets/shared/buttons.dart';
import 'package:apexology/widgets/shared/fades.dart';
import 'package:apexology/widgets/shared/dividers.dart';
import 'package:apexology/widgets/shared/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:apexology/screens/landing/landing_controller.dart';

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
                  MyTexts.welcomeToApexology(),
                  SizedBox(height: 10.h),
                  MyFades().landingCardGuide(),
                  SizedBox(height: 20.h),
                  MyFades().landingCardEmail(),
                  MyDividers.landingCardDivider(),
                  MyButtons().continueWithGoogle(),
                  SizedBox(height: 10.h),
                  MyTexts.privacyPolicy(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
