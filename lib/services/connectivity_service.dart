import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

///
/// Service which uses the [Connectivity] plugin to
/// trigger a method when internet connectivity changes
///
class ConnectivityService extends GetxService {
  ///
  /// DEPENDENCIES
  ///
  ///
  bool isConnected = false;

  ///
  /// Triggers a callback each time internet connection changes state
  late final connectivityListener =
      Connectivity().onConnectivityChanged.listen((result) {
    if (result == ConnectivityResult.none) {
      isConnected = false;
      print(isConnected);
    } else if (result == ConnectivityResult.wifi ||
        result == ConnectivityResult.mobile) {
      isConnected = true;
      print(isConnected);
    }
  });
}
