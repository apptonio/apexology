import 'package:apexology/constants/colors.dart';
import 'package:apexology/screens/landing/landing_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class MyTextfield extends StatelessWidget {
  final FocusNode focusNode;
  final String name;
  final String label;
  final String? Function(String?)? validator;

  MyTextfield(
      {super.key,
      required this.focusNode,
      required this.name,
      required this.label,
      required this.validator});

  final controller = Get.put(LandingController());

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      focusNode: focusNode,
      name: name,
      decoration: InputDecoration(
        labelText: label,
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
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
