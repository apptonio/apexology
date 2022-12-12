import 'dart:async';
import 'package:apexology/constants/assets.dart';
import 'package:apexology/constants/pages.dart';
import 'package:apexology/screens/landing/landing_screen.dart';
import 'package:apexology/services/connectivity_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../services/request_status.dart';

class LandingController extends GetxController {
  final auth = FirebaseAuth.instance.obs;

  var continueWithEmail = false.obs;
  var signUp = false.obs;
  final formKey = GlobalKey<FormBuilderState>().obs;
  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  final requestStatus = RequestStatus.LOADING.obs;

  List<String> landingCarouselList = [
    MyAssets.wraith,
    MyAssets.mirage,
    MyAssets.caustic,
    MyAssets.bloodhound,
    MyAssets.bangalore,
    MyAssets.lifeline,
    MyAssets.gibraltar
  ];

  Future<void> downloadImagesToCache(
      {required List<String> listOfImageUrls}) async {
    await Future.forEach(listOfImageUrls, (item) async {
      FileInfo? fileInfo = await DefaultCacheManager().getFileFromCache(item);


      bool fileExists = false;
      if (fileInfo != null) {
        fileExists = await fileInfo.file.exists();
      }
      if (!fileExists) {
        try {
          await DefaultCacheManager().downloadFile(item);
          print(item);
        } catch (e) {
          /// if file url is incorrect or corrupted then we move on to next url
          print('Error in downloading image $e');
        }
      }
    }).timeout(const Duration(seconds: 20));
  }

  @override
  Future<void> onInit() async {
    super.onInit();
    auth.value.authStateChanges().listen((user) {
      if (user != null) {
        Get.toNamed(MyRoutes.homeScreen);
      }
    });


      await downloadImagesToCache(listOfImageUrls: landingCarouselList);
    

  }

  @override
  void dispose() {
    emailFocusNode.value.dispose();
    passwordFocusNode.value.dispose();
    super.dispose();
  }

  void setRequestStatus(RequestStatus value) => requestStatus.value = value;

  void loginWithEmail() async {
    final validationCheck = formKey.value.currentState?.validate();
    if (validationCheck != null && validationCheck) {
      try {
        await auth.value.signInWithEmailAndPassword(
            email: formKey.value.currentState?.fields['email']?.value,
            password: formKey.value.currentState?.fields['password']?.value);
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
    final validationCheck = formKey.value.currentState?.validate();
    if (validationCheck != null && validationCheck) {
      try {
        await auth.value.createUserWithEmailAndPassword(
            email: formKey.value.currentState?.fields['email']?.value,
            password: formKey.value.currentState?.fields['password']?.value);
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
    // controller.setRequestStatus(RequestStatus.SUCCESS);
    return await auth.value.signInWithCredential(credential);
  }

  Future<void> signOut() async {
    await auth.value.signOut();
    Get.offAll(() => const LandingScreen());
  }
}
