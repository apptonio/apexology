import 'package:apexology/screens/home/home_binding.dart';
import 'package:apexology/screens/home/home_screen.dart';
import 'package:apexology/screens/landing/landing_binding.dart';
import 'package:apexology/screens/landing/landing_screen.dart';
import 'package:apexology/screens/offline/offline_binding.dart';
import 'package:apexology/screens/offline/offline_screen.dart';
import 'package:get/get.dart';

///
/// All pages used in the application
/// Also linked to the relevant bindings in order to
/// initialize / dispose proper controllers when neccesarry
///

final pages = [
  GetPage(
    name: MyRoutes.landingScreen,
    page: LandingScreen.new,
    binding: LandingBinding(),
  ),
  GetPage(
    name: MyRoutes.homeScreen,
    page: HomeScreen.new,
    binding: HomeBinding(),
  ),
  GetPage(
    name: MyRoutes.offlineScreen,
    page: OfflineScreen.new,
    binding: OfflineBinding(),
  )
];

/// All pages have their designated names which can be found here
class MyRoutes {
  static const landingScreen = '/landing-screen';
  static const homeScreen = '/home-screen';
  static const offlineScreen = '/offline-screen';
}
