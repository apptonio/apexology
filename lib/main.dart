import 'package:apexology/localization.dart';
import 'package:apexology/pages.dart';
import 'package:apexology/services/app_lifecycle_service.dart';
import 'package:apexology/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ApexologyApp());
}

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AppLifecycleService());
  }
}

class ApexologyApp extends StatelessWidget {
  const ApexologyApp({super.key});

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        /// Size of `Pixel XL`, device the designer uses in his designs on Figma
        designSize: const Size(412, 732),
        builder: (_, __) => GetMaterialApp(
          onGenerateTitle: (_) => 'appName'.tr,
          theme: theme,
          initialRoute: MyRoutes.landingScreen,
          initialBinding: InitialBinding(),
          getPages: pages,
          locale: Localization.locale,
          fallbackLocale: Localization.fallbackLocale,
          translations: Localization(),
        ),
      );
}
