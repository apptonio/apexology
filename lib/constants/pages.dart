import 'package:apexology/constants/routes.dart';
import 'package:apexology/screens/home/home_binding.dart';
import 'package:apexology/screens/home/home_screen.dart';
import 'package:apexology/screens/intro/intro_binding.dart';
import 'package:apexology/screens/intro/intro_screen.dart';
import 'package:apexology/screens/landing/landing_binding.dart';
import 'package:apexology/screens/landing/landing_screen.dart';
import 'package:apexology/screens/splash/splash_binding.dart';
import 'package:apexology/screens/splash/splash_screen.dart';
import 'package:get/get.dart';

final pages = [
  GetPage(
    name: MyRoutes.splashScreen,
    page: SplashScreen.new,
    binding: SplashBinding(),
  ),
  GetPage(
    name: MyRoutes.landingScreen,
    page: LandingScreen.new,
    binding: LandingBinding(),
  ),
  GetPage(
    name: MyRoutes.introScreen,
    page: IntroScreen.new,
    binding: IntroBinding(),
  ),
  GetPage(
    name: MyRoutes.homeScreen,
    page: HomeScreen.new,
    binding: HomeBinding(),
  ),
];
