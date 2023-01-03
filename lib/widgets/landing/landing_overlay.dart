import 'package:apexology/constants/colors.dart';
import 'package:apexology/constants/endpoints.dart';
import 'package:apexology/constants/text_styles.dart';
import 'package:apexology/screens/landing/landing_controller.dart';
import 'package:apexology/widgets/landing/landing_card.dart';
import 'package:apexology/widgets/shared/rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingOverlay extends StatelessWidget {
  LandingOverlay({super.key});

  final controller = Get.put(LandingController());

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [MyColors.black26, MyColors.black87])),
        child: SafeArea(
          child: Column(children: [
            const Spacer(
              flex: 2,
            ),
            LandingCard(),
            const Spacer(
              flex: 2,
            ),
            MyRichText(
              normalText: 'imageContribution'.tr,
              normalTextStyle: MyTextStyles.bodySmallWhite,
              linkText: 'imageContribution2'.tr,
              linkTextStyle: MyTextStyles.linkSmallWhite,
              action: () => controller.launchMyUrlOnTap(
                endpoint: MyEndpoints.landingImagesContribution,
              ),
            ),
            const Spacer()
          ]),
        ));
  }
}
