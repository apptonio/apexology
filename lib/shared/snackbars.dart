import 'package:apexology/constants/colors.dart';
import 'package:apexology/constants/numbers.dart';
import 'package:apexology/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MySnackbars {
  static void showSuccessSnackbar({
    required String message,
    Color backgroundColor = MyColors.grey,
    IconData icon = Icons.check,
  }) =>
      Get.rawSnackbar(
        backgroundColor: backgroundColor,
        icon: Icon(
          icon,
          color: MyColors.green,
        ),
        messageText: Text(
          message,
          style: MyTextStyles.bodySmallWhite,
        ),
        margin: EdgeInsets.all(Numbers().globalHorizontalMargin.r),
        padding: EdgeInsets.all(Numbers().globalHorizontalPadding.r),
        borderRadius: Numbers().globalBorderRadius.r,
      );

  static void showErrorSnackbar({
    required String message,
    Color backgroundColor = MyColors.grey,
    IconData icon = Icons.close,
  }) =>
      Get.rawSnackbar(
        backgroundColor: backgroundColor,
        icon: Icon(
          icon,
          color: MyColors.red,
        ),
        messageText: Text(
          message,
          style: MyTextStyles.bodySmallWhite,
        ),
        margin: EdgeInsets.all(Numbers().globalHorizontalMargin.r),
        padding: EdgeInsets.all(Numbers().globalHorizontalPadding.r),
        borderRadius: Numbers().globalBorderRadius.r,
      );
}
