import 'package:apexology/widgets/shared/snackbars.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class ConnectivityService {
  static bool isConnected = false;
  static bool isDisconnected = false;

  static void connectivityListen() {
    Connectivity().onConnectivityChanged.listen((result) {

      if (result == ConnectivityResult.none)  {
        isConnected = false;
        isDisconnected = true;
        MySnackbars.showErrorSnackbar(
            message: 'noInternet'.tr);
      } else if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        isConnected = true;
        if (isDisconnected) {
          MySnackbars.showSuccessSnackbar(
              message: 'reconnected'.tr);
          isDisconnected = false;
        }
      }
    });
  }
}
