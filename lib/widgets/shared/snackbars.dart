import 'package:apexology/constants/colors.dart';
import 'package:apexology/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MySnackbars {
  static void showSuccessSnackbar({
    required String message,
    Color backgroundColor = MyColors.black,
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
        margin: EdgeInsets.all(32.r),
        padding: EdgeInsets.all(24.r),
        borderRadius: 16.r,
      );

  static void showErrorSnackbar({
    required String message,
    Color backgroundColor = MyColors.black,
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
        margin: EdgeInsets.all(32.r),
        padding: EdgeInsets.all(24.r),
        borderRadius: 16.r,
      );
}
