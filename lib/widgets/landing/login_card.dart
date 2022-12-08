import 'package:apexology/constants/text_styles.dart';
import 'package:apexology/services/auth_service.dart';
import 'package:apexology/widgets/landing/login_form.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:apexology/screens/landing/landing_controller.dart';
import '../../constants/colors.dart';
import '../../constants/endpoints.dart';

class LoginCard extends StatelessWidget {
  LoginCard({super.key});

  final controller = Get.put(LandingController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color:
                    const Color.fromARGB(255, 197, 188, 188).withOpacity(0.5),
                blurRadius: 6.0,
                spreadRadius: 2.0,
              )
            ],
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16) // changes position of shadow
                ),
          ),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Welcome to Apexology',
                        style: MyTextStyles.header,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Center(
                        child: Obx(() => AnimatedCrossFade(
                            firstChild: Text('Choose one of the options below',
                                style: MyTextStyles.body),
                            secondChild: AnimatedCrossFade(
                                firstChild: RichText(
                                  text: TextSpan(
                                    text: "Don't have an account? ",
                                    style: MyTextStyles.body,
                                    children: [
                                      TextSpan(
                                        text: 'Sign up',
                                        style: MyTextStyles.link,
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            controller.signUp.value = true;
                                          },
                                      ),
                                    ],
                                  ),
                                ),
                                secondChild: RichText(
                                  text: TextSpan(
                                    text: "Already have an account? ",
                                    style: MyTextStyles.body,
                                    children: [
                                      TextSpan(
                                        text: 'Log in',
                                        style: MyTextStyles.link,
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            controller.signUp.value = false;
                                          },
                                      ),
                                    ],
                                  ),
                                ),
                                crossFadeState: controller.signUp.value
                                    ? CrossFadeState.showSecond
                                    : CrossFadeState.showFirst,
                                duration: const Duration(milliseconds: 300)),
                            crossFadeState: controller.continueWithEmail.value
                                ? CrossFadeState.showSecond
                                : CrossFadeState.showFirst,
                            duration: const Duration(milliseconds: 300)))),
                    SizedBox(height: 20.h),
                    Center(
                        child: Obx(() => AnimatedCrossFade(
                            firstChild: SignInButton(
                              Buttons.Email,
                              text: 'Continue with Email',
                              onPressed: () {
                                controller.continueWithEmail.value = true;
                              },
                            ),
                            secondChild: LoginForm(),
                            crossFadeState: controller.continueWithEmail.value
                                ? CrossFadeState.showSecond
                                : CrossFadeState.showFirst,
                            duration: const Duration(milliseconds: 300)))),
                    Row(children: [
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Divider(
                              color: MyColors.black,
                              height: 36.h,
                            )),
                      ),
                      Text(
                        "OR",
                        style: MyTextStyles.body,
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Divider(
                              color: MyColors.black,
                              height: 36.h,
                            )),
                      ),
                    ]),
                    Center(
                      child: SignInButton(
                        Buttons.Google,
                        text: 'Continue with Google',
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
    );
  }
}
