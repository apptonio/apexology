import 'dart:math';

import 'package:apexology/constants/assets.dart';
import 'package:apexology/constants/endpoints.dart';
import 'package:apexology/constants/text_styles.dart';
import 'package:apexology/screens/landing/landing_controller.dart';
import 'package:apexology/services/auth_service.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LandingController());

    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(MyAssets
                    .splashList[Random().nextInt(MyAssets.splashList.length)]),
                fit: BoxFit.cover),
          ),
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black26, Colors.black87])),
            child: SafeArea(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0.w),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome to Apexology!',
                              style: MyTextStyles.header,
                            ),
                            SizedBox(height: 10.h),
                            Text('Log in or Sign up to continue.',
                                style: MyTextStyles.body),
                            SizedBox(height: 20.h),
                            Center(
                                child: SignInButtonBuilder(
                              text: 'Get going with Email',
                              icon: Icons.email,
                              onPressed: () {},
                              backgroundColor: Colors.blueGrey[700]!,
                              width: 220.0.w,
                            )),
                            SizedBox(height: 10.h),
                            Center(
                              child: SignInButton(
                                Buttons.Google,
                                onPressed: () {
                                  AuthService().signInWithGoogle();
                                },
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Center(
                              child: RichText(
                                text: TextSpan(
                                  text: 'By signing up you accept our ',
                                  style: MyTextStyles.bodySmall,
                                  children: [
                                    TextSpan(
                                      text: 'privacy policy',
                                      style: MyTextStyles.linkSmall,
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () async {
                                          await launchUrlString(
                                              MyEndpoints.privacyPolicy,
                                              mode: LaunchMode.inAppWebView);
                                        },
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

        // Images from Alpha Coders website, contribution to AlphaSystem
        // https://alphacoders.com/users/profile/18905

        // Animation widget for animating the Login / Sign up button
        // AnimatedCrossFade(
        //     firstChild: LoginButton(),
        //     secondChild: LoginForm,
        //     crossFadeState:
        //         isLogin ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        //     duration: Duration(milliseconds: 300)),
      ),
    );
  }
}
