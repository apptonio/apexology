import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'offline_controller.dart';

class OfflineScreen extends StatelessWidget {
  const OfflineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final offlineController = Get.put(OfflineController());

    return const Scaffold(body: Center(child: Text('There is no internet')));
  }
}
