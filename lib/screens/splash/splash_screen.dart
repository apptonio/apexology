import 'package:apexology/constants/assets.dart';
import 'package:apexology/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.grey,
        body: SafeArea(
            child: Center(
          child: Image.asset(
            MyAssets.appIcon,
            height: 75.h,
            width: 75.w,
          ),
        )));
  }
}
