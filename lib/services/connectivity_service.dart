import 'package:apexology/widgets/shared/snackbars.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class ConnectivityService {
  static ConnectivityResult? connectionState;

  dynamic checkConnection() async {
    if (await Connectivity().checkConnectivity() == ConnectivityResult.none) {
      connectionState = ConnectivityResult.none;
      MySnackbars.showErrorSnackbar(message: "Please connect to the internet.");
    }
  }

  static void connectivityListen() {
    Connectivity().onConnectivityChanged.listen((result) {
      print(result);
      if (result == ConnectivityResult.none) {
        connectionState = result;
        MySnackbars.showErrorSnackbar(
            message: "Please connect to the internet.");
      } else if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile &&
              connectionState == ConnectivityResult.none) {
        connectionState = result;
        Get.closeCurrentSnackbar();
      }
    });
  }
}