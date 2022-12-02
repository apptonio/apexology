import 'package:apexology/constants/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

import '../../screens/landing/landing_controller.dart';

class LoginForm extends StatelessWidget {
   LoginForm({super.key});


  final _auth = FirebaseAuth.instance;
  final controller = Get.put(LandingController());
    
  @override
  Widget build(BuildContext context) {


    return FormBuilder(
        key: controller.formKey.value,
        child: SingleChildScrollView(
            child: Column(children: [
          const SizedBox(height: 10),
          FormBuilderTextField(
            //focusNode: _emailFocusNode,
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);

              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            name: 'email',
            decoration: InputDecoration(
              labelText: 'Email',
              // labelStyle: TextStyle(
              //     color: _emailFocusNode.hasFocus
              //         ? MyColors.blue
              //         : MyColors.black),
              border: const  OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12)),
              focusedBorder: OutlineInputBorder(
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
           // focusNode: _passwordFocusNode,
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
                  // color: _passwordFocusNode.hasFocus
                  //     ? MyColors.blue
                  //     : MyColors.black
                      ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: MyColors.blue,
                ),
              ),
            ),
            validator: FormBuilderValidators.required(),
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          const SizedBox(height: 5),
          // WideButton(
          //     title: 'LOG IN',
          //     action: () async {
          //       final validationCheck = _formKey.currentState?.validate();
          //       if (validationCheck != null && validationCheck) {
          //         try {
          //           await _auth
          //               .signInWithEmailAndPassword(
          //                   email:
          //                       _formKey.currentState?.fields['email']?.value,
          //                   password: _formKey
          //                       .currentState?.fields['password']?.value)
          //               .then((value) =>
          //                   router.navigateTo((context), Routes.homeScreen));
          //         } on PlatformException catch (err) {
          //           var message =
          //               'An error occurred, please check your credentials.';
          //           if (err.message != null) {
          //             message = err.message!;
          //           }
          //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          //             content: Text(message),
          //             behavior: SnackBarBehavior.floating,
          //             margin: const EdgeInsets.all(20.0),
          //           ));
          //         }
          //       }
          //     }),
          // const SizedBox(
          //   height: 10,
          // ),
          // Divider(
          //   color: Colors.black12,
          //   indent: 40,
          //   endIndent: 40,
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          // WideButton(
          //     title: 'SIGN IN',
          //     action: () async {
          //       final validationCheck = _formKey.currentState?.validate();
          //       if (validationCheck != null && validationCheck) {
          //         try {
          //           await _auth
          //               .createUserWithEmailAndPassword(
          //                   email:
          //                       _formKey.currentState?.fields['email']?.value,
          //                   password: _formKey
          //                       .currentState?.fields['password']?.value)
          //               .then((value) =>
          //                   router.navigateTo((context), Routes.homeScreen));
          //         } on FirebaseAuthException catch (e) {
          //           if (e.code == 'weak-password') {
          //             ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          //               content: Text('Please provide a stronger password.'),
          //               behavior: SnackBarBehavior.floating,
          //               margin: EdgeInsets.all(20.0),
          //             ));
          //           } else if (e.code == 'email-already-in-use') {
          //             ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          //               content:
          //                   Text('An account with this email already exists.'),
          //               behavior: SnackBarBehavior.floating,
          //               margin: EdgeInsets.all(20.0),
          //             ));
          //           }
          //         } on PlatformException catch (err) {
          //           var message =
          //               'An error occurred, please check your credentials';
          //           if (err.message != null) {
          //             message = err.message!;
          //           }
          //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          //             content: Text(message),
          //             behavior: SnackBarBehavior.floating,
          //             margin: const EdgeInsets.all(20.0),
          //           ));
          //         }
          //       }
          //     })
        ])));
  }
}
