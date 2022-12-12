import 'package:apexology/constants/pages.dart';
import 'package:apexology/screens/offline/offline_binding.dart';
import 'package:apexology/screens/offline/offline_screen.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class ConnectivityService extends GetxService {
  final currentRoute = Get.currentRoute;
  bool isConnected = false;

  late final connectivityListener =
      Connectivity().onConnectivityChanged.listen((result) {
    if (result == ConnectivityResult.none) {
      isConnected = false;
      Get.to(
        const OfflineScreen(),
        binding: OfflineBinding(),
      );
    } else if (result == ConnectivityResult.wifi ||
        result == ConnectivityResult.mobile) {
      isConnected = true;
      if (Get.currentRoute == MyRoutes.offlineScreen) {
        Get.back();
      }
    }
  });
}
