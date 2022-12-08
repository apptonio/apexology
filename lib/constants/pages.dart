import 'package:apexology/screens/home/home_binding.dart';
import 'package:apexology/screens/home/home_screen.dart';
import 'package:apexology/screens/landing/landing_binding.dart';
import 'package:apexology/screens/landing/landing_screen.dart';
import 'package:apexology/screens/offline/offline_binding.dart';
import 'package:apexology/screens/offline/offline_screen.dart';
import 'package:get/get.dart';

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

class MyRoutes {
  static const landingScreen = '/LandingScreen';
  static const homeScreen = '/HomeScreen';
  static const offlineScreen = '/OfflineScreen';
}
