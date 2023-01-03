import 'package:apexology/constants/colors.dart';
import 'package:apexology/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDividers {
  static landingCardDivider() => Row(children: [
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
      ]);
}
