import 'dart:async';
import 'package:apexology/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

import '../../services/request_status.dart';

class LandingController extends GetxController {

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

  @override
  Future<void> onInit() async {
    super.onInit();
  }

  @override
  void dispose() {
    emailFocusNode.value.dispose();
    passwordFocusNode.value.dispose();
    super.dispose();
  }

  void setRequestStatus(RequestStatus value) => requestStatus.value = value;
}
