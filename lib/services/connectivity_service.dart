import 'package:apexology/widgets/shared/snackbars.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  static bool isConnected = false;
  static bool isDisconnected = false;

  static void connectivityListen() {
    Connectivity().onConnectivityChanged.listen((result) {

      if (result == ConnectivityResult.none)  {
        print('no connecton');
        isConnected = false;
        isDisconnected = true;
        MySnackbars.showErrorSnackbar(
            message: "Please connect to the internet.");
      } else if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        isConnected = true;
        if (isDisconnected) {
          MySnackbars.showSuccessSnackbar(
              message: "Successfully reconnected to the internet.");
          isDisconnected = false;
        }
      }
    });
  }
}
