import 'dart:ui';

import 'package:apexology/constants/routes.dart';
import 'package:apexology/services/connectivity_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:intro_slider/intro_slider.dart';

class IntroController extends GetxController {
  final ConnectivityService connectivityService =
      Get.find<ConnectivityService>();

  final auth = FirebaseAuth.instance.obs;
  List<ContentConfig> listContentConfig = [];

  @override
  void onInit() {
    super.onInit();
    // connectivityService.checkConnection();
    // auth.value.authStateChanges().listen((user) {
    //   if (user != null) {
    //     Get.offAllNamed(MyRoutes.homeScreen);
    //   } else {
    //     Get.offAllNamed(MyRoutes.landingScreen);
    //   }
    // });
    listContentConfig.add(
      const ContentConfig(
        title: "ERASER",
        description:
            "Allow miles wound place the leave had. To sitting subject no improve studied limited",
        //pathImage: "images/photo_eraser.png",
        backgroundColor: Color(0xfff5a623),
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: "PENCIL",
        description:
            "Ye indulgence unreserved connection alteration appearance",
        //pathImage: "images/photo_pencil.png",
        backgroundColor: Color(0xff203152),
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: "RULER",
        description:
            "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        //pathImage: "images/photo_ruler.png",
        backgroundColor: Color(0xff9932CC),
      ),
    );
  }

  void onDonePress() {
    Get.offAllNamed(MyRoutes.homeScreen);
  }
}
