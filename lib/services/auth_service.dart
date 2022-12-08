import 'package:apexology/constants/pages.dart';
import 'package:apexology/screens/home/home_screen.dart';
import 'package:apexology/screens/landing/landing_screen.dart';
import 'package:apexology/services/request_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../screens/landing/landing_controller.dart';

class AuthService extends GetxService {
  // check if user is logged in / if so send him directly to homepage
  final controller = Get.put(LandingController());
  final auth = FirebaseAuth.instance.obs;

  Stream<User?> get onAuthStateChanged => auth.value.authStateChanges();

  String handleAuthState() {
    String route = MyRoutes.landingScreen;

    onAuthStateChanged.listen((user) {
      if (user!.email!.isEmpty) {
        route = MyRoutes.landingScreen;
      } else {
        route = MyRoutes.homeScreen;
      }
    });
    return route;

    // auth.value.authStateChanges().listen((value) {
    //   if (value?.providerData.isNotEmpty ?? false) {
    //     print(value);
    //     route = MyRoutes.homeScreen;
    //    // Get.offNamed(MyRoutes.homeScreen);
    //   }
    //   else{
    //     route = MyRoutes.landingScreen;
    //    // Get.offAllNamed(MyRoutes.landingScreen);
    //   }
    // });
    // return route;

    //return StreamBuilder(

    // stream: auth.value.authStateChanges(),
    // builder: ((context, snapshot) {
    //   if (snapshot.hasData) {
    //     controller.continueWithEmail.value = false;
    //     controller.signUp.value = false;
    //     return const HomeScreen();
    //   } else {
    //     return const LandingScreen();
    //   }
    // }));
  }

  void loginWithEmail() async {
    final validationCheck = controller.formKey.value.currentState?.validate();
    if (validationCheck != null && validationCheck) {
      try {
        await auth.value.signInWithEmailAndPassword(
            email:
                controller.formKey.value.currentState?.fields['email']?.value,
            password: controller
                .formKey.value.currentState?.fields['password']?.value);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'wrong-password') {
          Get.showSnackbar(const GetSnackBar(
              message:
                  'The password is invalid or the user does not have a password.',
              margin: EdgeInsets.all(20.0),
              duration: Duration(milliseconds: 3000),
              borderRadius: 8.0));
        } else if (e.code == 'user-not-found') {
          Get.showSnackbar(const GetSnackBar(
              message: 'An account with this email does not exist.',
              margin: EdgeInsets.all(20.0),
              duration: Duration(milliseconds: 3000),
              borderRadius: 8.0));
        } else if (e.code == 'user-disabled') {
          Get.showSnackbar(const GetSnackBar(
              message: 'The email for this account has been disabled.',
              margin: EdgeInsets.all(20.0),
              duration: Duration(milliseconds: 3000),
              borderRadius: 8.0));
        } else if (e.code == 'invalid-email') {
          Get.showSnackbar(const GetSnackBar(
              message: 'Please enter a valid email address.',
              margin: EdgeInsets.all(20.0),
              duration: Duration(milliseconds: 3000),
              borderRadius: 8.0));
        }
      } on PlatformException catch (err) {
        var message = 'An error occurred, please check your credentials.';
        if (err.message != null) {
          message = err.message!;
        }
        Get.showSnackbar(GetSnackBar(
            message: message,
            margin: const EdgeInsets.all(20.0),
            duration: const Duration(milliseconds: 3000),
            borderRadius: 8.0));
      }
    } else {
      Get.showSnackbar(const GetSnackBar(
          message: 'Please provide a better email & password.',
          margin: EdgeInsets.all(20.0),
          duration: Duration(milliseconds: 3000),
          borderRadius: 8.0));
    }
  }

  void signUpWithEmail() async {
    final validationCheck = controller.formKey.value.currentState?.validate();
    if (validationCheck != null && validationCheck) {
      try {
        await auth.value.createUserWithEmailAndPassword(
            email:
                controller.formKey.value.currentState?.fields['email']?.value,
            password: controller
                .formKey.value.currentState?.fields['password']?.value);
      } on FirebaseAuthException catch (err) {
        if (err.code == 'weak-password') {
          Get.showSnackbar(const GetSnackBar(
              message: 'Please provide a stronger password',
              margin: EdgeInsets.all(20.0),
              duration: Duration(milliseconds: 3000),
              borderRadius: 8.0));
        } else if (err.code == 'email-already-in-use') {
          Get.showSnackbar(const GetSnackBar(
              message: 'An account with this email already exists.',
              margin: EdgeInsets.all(20.0),
              duration: Duration(milliseconds: 3000),
              borderRadius: 8.0));
        } else if (err.code == 'invalid-email') {
          Get.showSnackbar(const GetSnackBar(
              message: 'Please enter a valid email address.',
              margin: EdgeInsets.all(20.0),
              duration: Duration(milliseconds: 3000),
              borderRadius: 8.0));
        }
      } on PlatformException catch (e) {
        var message = 'An error occurred, please check your credentials.';
        if (e.message != null) {
          message = e.message!;
        }
        Get.showSnackbar(GetSnackBar(
          message: message,
          margin: const EdgeInsets.all(20.0),
          duration: const Duration(milliseconds: 3000),
          borderRadius: 8.0,
        ));
      }
    } else {
      Get.showSnackbar(const GetSnackBar(
        message: 'Please provide a better email & password.',
        margin: EdgeInsets.all(20.0),
        duration: Duration(milliseconds: 3000),
        borderRadius: 8.0,
      ));
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    controller.setRequestStatus(RequestStatus.SUCCESS);
    return await auth.value.signInWithCredential(credential);
  }

  Future<void> signOut() async {
    auth.value.signOut();
  }
}
