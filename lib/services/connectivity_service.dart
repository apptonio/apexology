import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class ConnectivityService extends GetxService {

  RxBool isConnected = false.obs;

  late final connectivityListener =
      Connectivity().onConnectivityChanged.listen((result) {
    if (result == ConnectivityResult.none) {
      isConnected.value = false;
    } else if (result == ConnectivityResult.wifi ||
        result == ConnectivityResult.mobile) {
      isConnected.value = true;
    }
  });
}
