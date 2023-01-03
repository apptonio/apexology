import 'package:apexology/screens/landing/landing_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyRichText extends StatelessWidget {
  final String? normalText;
  final TextStyle? normalTextStyle;
  final String? linkText;
  final TextStyle? linkTextStyle;
  final VoidCallback? action;

  MyRichText({
    super.key,
    required this.normalText,
    required this.normalTextStyle,
    required this.linkText,
    required this.linkTextStyle,
    required this.action,
  });

  final controller = Get.put(LandingController());

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: normalText,
        style: normalTextStyle,
        children: [
          TextSpan(
              text: linkText,
              style: linkTextStyle,
              recognizer: TapGestureRecognizer()..onTap = action),
        ],
      ),
    );
  }
}
