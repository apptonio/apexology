import 'package:apexology/constants/colors.dart';
import 'package:apexology/services/connectivity_service.dart';
import 'package:apexology/widgets/shared/snackbars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          SizedBox(height: 5.h),
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
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.email()
            ]),
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          SizedBox(height: 20.h),
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
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.match(
                  r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
            ]),
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          SizedBox(height: 20.h),
          Obx(() => AnimatedCrossFade(
              firstChild: SignInButton(
                Buttons.Email,
                text: 'Login with Email',
                onPressed: () {
                  if (ConnectivityService.isConnected) {
                    controller.loginWithEmail();
                  } else {
                    MySnackbars.showErrorSnackbar(
                        message: 'Please connect to the internet.');
                  }
                },
              ),
              secondChild: SignInButton(
                Buttons.Email,
                text: 'Sign up with Email',
                onPressed: () {
                  if (ConnectivityService.isConnected) {
                    controller.signUpWithEmail();
                  } else {
                    MySnackbars.showErrorSnackbar(
                        message: 'Please connect to the internet.');
                  }
                },
              ),
              crossFadeState: controller.signUp.value
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: const Duration(milliseconds: 300)))
        ]))));
  }
}
