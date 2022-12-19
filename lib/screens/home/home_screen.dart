import 'package:apexology/screens/landing/landing_controller.dart';
import 'package:apexology/services/connectivity_service.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());

    final landingController = Get.put(LandingController());

    return Scaffold(
        body: Center(
            child: ListView(
      children: [
        Text(FirebaseAuth.instance.currentUser?.email ?? ''),
        ElevatedButton(
            onPressed: () => landingController.signOut(),
            child: const Text('Sign out')),
        ElevatedButton(
            onPressed: () => print(ConnectivityService.connectionState ==
                    ConnectivityResult.wifi ||
                ConnectivityService.connectionState ==
                    ConnectivityResult.mobile),
            child: const Text('Check connectivity'))
      ],
    )));
  }
}
