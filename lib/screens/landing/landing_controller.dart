import 'dart:async';
import 'package:apexology/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

///
/// This is a controller in which we write logic concerning [LandingScreen]
/// The controller uses a [StateMixin]
/// We pass a variable type to the mixin and then get access to the `change` method
/// We can set different states with it and then render proper Widget depending on the state
///

class LandingController extends GetxController {
  var emailIsPressed = false.obs;

  final formKey = GlobalKey<FormBuilderState>().obs;

  final _emailFocusNode = FocusNode().obs;
  final _passwordFocusNode = FocusNode().obs;

  Timer? timer;

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


  void changeEmailButtonState() {
    emailIsPressed.value = true;
  }

  @override
  void dispose() {
    _emailFocusNode.value.dispose();
    _passwordFocusNode.value.dispose();
    super.dispose();
  }
}
