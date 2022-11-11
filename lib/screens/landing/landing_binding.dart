import 'package:get/get.dart';

import 'landing_controller.dart';

///
/// Because we linked this binding with a screen in `pages.dart`,
/// this binding will get triggered once [LandingScreen] is shown on screen
/// It will initialize [LandingController] and dispose it once the screen is dismissed
///

class LandingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(LandingController.new);
  }
}
