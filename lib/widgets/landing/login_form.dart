import 'package:apexology/constants/colors.dart';
import 'package:apexology/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

import '../../screens/landing/landing_controller.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final controller = Get.put(LandingController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => FormBuilder(
        key: controller.formKey.value,
        child: SingleChildScrollView(
            child: Column(children: [
          const SizedBox(height: 10),
          FormBuilderTextField(
            focusNode: controller.emailFocusNode.value,
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);

              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            name: 'email',
            decoration: InputDecoration(
              labelText: 'Email',
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
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.email()
            ]),
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          const SizedBox(height: 20),
          FormBuilderTextField(
            focusNode: controller.passwordFocusNode.value,
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);

              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            name: 'password',
            decoration: InputDecoration(
              labelText: 'Password',
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
            validator: FormBuilderValidators.required(),
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          const SizedBox(height: 20),
          Obx(() => AnimatedCrossFade(
              firstChild: SignInButton(
                Buttons.Email,
                text: 'Login with Email',
                onPressed: () {
                  AuthService().loginWithEmail();
                },
              ),
              secondChild: SignInButton(
                Buttons.Email,
                text: 'Sign up with Email',
                onPressed: () {
                  AuthService().signUpWithEmail();
                },
              ),
              crossFadeState: controller.isLogin.value
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 300)))
        ]))));
  }
}
