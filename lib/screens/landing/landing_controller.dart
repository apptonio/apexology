import 'dart:async';
import 'package:apexology/constants/assets.dart';
import 'package:apexology/constants/pages.dart';
import 'package:apexology/screens/landing/landing_screen.dart';
import 'package:apexology/services/connectivity_service.dart';
import 'package:apexology/widgets/shared/snackbars.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
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
        } catch (e) {}
      }
    });
  }

//.timeout(const Duration(seconds: 20))
  @override
  Future<void> onInit() async {
    super.onInit();
    auth.value.authStateChanges().listen((user) {
      if (user != null) {
        Get.toNamed(MyRoutes.homeScreen);
      }
    });

    initialization();
  }

  void initialization() async {
    if (ConnectivityService.isConnected) {
      await downloadImagesToCache(listOfImageUrls: landingCarouselList);
    }

    FlutterNativeSplash.remove();
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
          MySnackbars.showErrorSnackbar(message: 'invalidPassword'.tr);
        } else if (e.code == 'user-not-found') {
          MySnackbars.showErrorSnackbar(message: 'userNotFound'.tr);
        } else if (e.code == 'user-disabled') {
          MySnackbars.showErrorSnackbar(message: 'disabledEmail'.tr);
        } else if (e.code == 'invalid-email') {
          MySnackbars.showErrorSnackbar(message: 'invalidEmail'.tr);
        }
      } on PlatformException catch (err) {
        var message = 'formError'.tr;
        if (err.message != null) {
          message = err.message!;
        }
        MySnackbars.showErrorSnackbar(message: message);
      }
    } else {
      MySnackbars.showErrorSnackbar(message: 'betterCredentials'.tr);
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
          MySnackbars.showErrorSnackbar(message: 'weakPassword'.tr);
        } else if (err.code == 'email-already-in-use') {
          MySnackbars.showErrorSnackbar(message: 'emailAlreadyInUse'.tr);
        } else if (err.code == 'invalid-email') {
          MySnackbars.showErrorSnackbar(message: 'invalidEmail'.tr);
        }
      } on PlatformException catch (e) {
        var message = 'formError'.tr;
        if (e.message != null) {
          message = e.message!;
        }
        MySnackbars.showErrorSnackbar(message: message);
      }
    } else {
      MySnackbars.showErrorSnackbar(message: 'betterCredentials'.tr);
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return await auth.value.signInWithCredential(credential);
  }

  Future<void> signOut() async {
    await auth.value.signOut();
    Get.offAll(() => const LandingScreen());
  }
}
