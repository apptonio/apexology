import 'package:apexology/screens/landing/landing_controller.dart';
import 'package:apexology/shared/textfield.dart';
import 'package:apexology/shared/fades.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
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
          MyTextfield(
              focusNode: controller.emailFocusNode.value,
              name: 'email',
              label: 'email'.tr,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.email()
              ])),
          SizedBox(height: 20.h),
          MyTextfield(
              focusNode: controller.passwordFocusNode.value,
              name: 'password',
              label: 'password'.tr,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.match(
                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
              ])),
          SizedBox(height: 20.h),
          MyFades().emailOption(),
        ]))));
  }
}
