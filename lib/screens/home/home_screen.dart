import 'package:apexology/screens/home/home_controller.dart';
import 'package:apexology/screens/landing/landing_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final landingController = Get.put(LandingController());
    final userEmail = FirebaseAuth.instance.currentUser?.email ?? '';

    return Scaffold(
        body: Center(
            child: ListView(
      children: [
        Text(userEmail),
        ElevatedButton(
            onPressed: () => landingController.signOut(),
            child: Text('signOut'.tr)),
      ],
    )));
  }
}
