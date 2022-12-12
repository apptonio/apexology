import 'package:apexology/constants/assets.dart';
import 'package:apexology/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'offline_controller.dart';

class OfflineScreen extends StatelessWidget {
  const OfflineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final offlineController = Get.put(OfflineController());

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(MyAssets.noInternet),
              Text(
                'Please connect to the internet',
                style: MyTextStyles.header,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
