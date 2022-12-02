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
import '../../constants/endpoints.dart';

class LoginCard extends StatelessWidget {
  LoginCard({super.key});

  final controller = Get.put(LandingController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0.w),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
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
                    child: Text('Choose one of the options below',
                        style: MyTextStyles.body),
                  ),
                  SizedBox(height: 20.h),
                  Center(
                      child: Obx(() => AnimatedCrossFade(
                          firstChild: SignInButton(
                            Buttons.Email,
                            onPressed: () {
                              controller.changeEmailButtonState();
                            },
                          ),
                          secondChild: LoginForm(),
                          crossFadeState: controller.emailIsPressed.value
                              ? CrossFadeState.showSecond
                              : CrossFadeState.showFirst,
                          duration: const Duration(milliseconds: 300)))),
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
                                await launchUrlString(MyEndpoints.privacyPolicy,
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
    );
  }
}
