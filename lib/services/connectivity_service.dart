import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConnectivityService {
  static bool isConnected = false;

  static void connectivityListen() {
    Connectivity().onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.none) {
        isConnected = false;
        showSnackbar();
      } else if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        isConnected = true;
      }
    });
  }

  static void showSnackbar() {
    if (isConnected == false) {
      Get.showSnackbar(const GetSnackBar(
          message: 'There is no internet connection',
          margin: EdgeInsets.all(20.0),
          duration: Duration(milliseconds: 3000),
          borderRadius: 8.0));
    }
  }
}
