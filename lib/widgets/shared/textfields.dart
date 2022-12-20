import 'package:apexology/constants/colors.dart';
import 'package:apexology/screens/landing/landing_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

class MyTextfields {
  final controller = Get.put(LandingController());

  emailTextfield() => FormBuilderTextField(
        focusNode: controller.emailFocusNode.value,
        name: 'email',
        decoration: InputDecoration(
          labelText: 'email'.tr,
          errorStyle: const TextStyle(color: MyColors.red),
          labelStyle: TextStyle(
              color: controller.emailFocusNode.value.hasFocus
                  ? MyColors.blue
                  : MyColors.black),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12)),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: MyColors.blue,
            ),
          ),
        ),
        validator: FormBuilderValidators.compose(
            [FormBuilderValidators.required(), FormBuilderValidators.email()]),
        autovalidateMode: AutovalidateMode.onUserInteraction,
      );

  passwordTextfield() => FormBuilderTextField(
        focusNode: controller.passwordFocusNode.value,
        name: 'password',
        decoration: InputDecoration(
          labelText: 'password'.tr,
          labelStyle: TextStyle(
              color: controller.passwordFocusNode.value.hasFocus
                  ? MyColors.blue
                  : MyColors.black),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12)),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: MyColors.blue,
            ),
          ),
        ),
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(),
          FormBuilderValidators.match(
              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        ]),
        autovalidateMode: AutovalidateMode.onUserInteraction,
      );
}
