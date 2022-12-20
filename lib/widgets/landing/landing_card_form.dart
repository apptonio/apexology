import 'package:apexology/screens/landing/landing_controller.dart';
import 'package:apexology/widgets/shared/fades.dart';
import 'package:apexology/widgets/shared/textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LandingCardForm extends StatelessWidget {
  LandingCardForm({super.key});

  final controller = Get.put(LandingController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => FormBuilder(
        key: controller.formKey.value,
        child: SingleChildScrollView(
            child: Column(children: [
          SizedBox(height: 5.h),
          MyTextfields().emailTextfield(),
          SizedBox(height: 20.h),
          MyTextfields().passwordTextfield(),
          SizedBox(height: 20.h),
          MyFades().emailOption(),
        ]))));
  }
}
