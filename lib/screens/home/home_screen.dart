import 'package:apexology/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Scaffold(
        body: Center(
            child: ListView(
      children: [
        Text(FirebaseAuth.instance.currentUser?.email ?? ''),
        ElevatedButton(
            onPressed: () {
              
              AuthService().signOut();
            },
            child: const Text('Sign out'))
      ],
    )));
  }
}
