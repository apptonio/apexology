import 'package:apexology/constants/assets.dart';
import 'package:apexology/constants/endpoints.dart';
import 'package:apexology/constants/text_styles.dart';
import 'package:apexology/screens/landing/landing_controller.dart';
import 'package:apexology/widgets/landing/login_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LandingScreen extends StatelessWidget {
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
                  .map((item) => Center(
                          child: FadeInImage(
                        image: NetworkImage(item),
                        placeholder:
                            const AssetImage(MyAssets.landingPlaceholder),
                        fit: BoxFit.cover,
                        height: height,
                      )))
                  .toList(),
            ),
            Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black26, Colors.black87])),
                child: SafeArea(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacer(),
                        const Spacer(),
                        LoginCard(),
                        const Spacer(),
                        const Spacer(),
                        RichText(
                          text: TextSpan(
                            text: 'Image contribution to ',
                            style: MyTextStyles.bodySmallWhite,
                            children: [
                              TextSpan(
                                text: 'AlphaSystem',
                                style: MyTextStyles.linkSmallWhite,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    await launchUrlString(
                                        MyEndpoints.landingImagesContribution,
                                        mode: LaunchMode.inAppWebView);
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
