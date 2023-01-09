import 'package:apexology/services/connectivity_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../constants/routes.dart';

class SplashController extends GetxController {
  final ConnectivityService connectivityService =
      Get.find<ConnectivityService>();

  final auth = FirebaseAuth.instance.obs;

  @override
  void onInit() {
    super.onInit();
    connectivityService.checkConnection();
    auth.value.authStateChanges().listen((user) {
      if (user != null) {
        Get.offAllNamed(MyRoutes.introScreen);
      } else {
        Get.offAllNamed(MyRoutes.landingScreen);
      }
    });
  }

  @override
  void onReady() async {}

  @override
  void onClose() {}
}
