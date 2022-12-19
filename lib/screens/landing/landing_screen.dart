import 'package:apexology/constants/endpoints.dart';
import 'package:apexology/constants/text_styles.dart';
import 'package:apexology/screens/landing/landing_controller.dart';
import 'package:apexology/widgets/landing/login_card.dart';
import 'package:apexology/widgets/shared/snackbars.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../services/connectivity_service.dart';

class LandingScreen extends GetView<LandingController> {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LandingController());
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
            child: Stack(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  height: height,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(milliseconds: 5000)),
              items: controller.landingCarouselList
                  .map((item) => Image.asset(
                        item,
                        height: height,
                        fit: BoxFit.cover,
                      ))
                  .toList(),
            ),
            Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black26, Colors.black87])),
                child: SafeArea(
                  child: Column(children: [
                    const Spacer(
                      flex: 2,
                    ),
                    LoginCard(),
                    const Spacer(
                      flex: 2,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'imageContribution'.tr,
                        style: MyTextStyles.bodySmallWhite,
                        children: [
                          TextSpan(
                            text: 'imageContribution2'.tr,
                            style: MyTextStyles.linkSmallWhite,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                if (ConnectivityService.connectionState != ConnectivityResult.none){
                                await launchUrlString(
                                    MyEndpoints.landingImagesContribution,
                                    mode: LaunchMode.inAppWebView);
                                }else {
                                  MySnackbars.showErrorSnackbar(message: 'noInternet'.tr);
                                }
                              },
                          ),
                        ],
                      ),
                    ),
                    const Spacer()
                  ]),
                ))
          ],
        )));
  }
}
