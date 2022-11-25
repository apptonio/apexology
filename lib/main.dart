import 'package:apexology/constants/localization.dart';
import 'package:apexology/constants/pages.dart';
import 'package:apexology/services/app_lifecycle_service.dart';
import 'package:apexology/constants/theme.dart';
import 'package:apexology/services/auth_service.dart';
import 'package:apexology/services/connectivity_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import 'services/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(ConnectivityService());
  ConnectivityService().connectivityListener;
  runApp(ApexologyApp());
}

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AppLifecycleService());
  }
}

class ApexologyApp extends StatelessWidget {
  ApexologyApp({super.key});

  final connect = Get.find<ConnectivityService>();

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        designSize: const Size(412, 732),
        builder: (_, __) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateTitle: (_) => 'appName'.tr,
          theme: theme,
          initialBinding: InitialBinding(),
          getPages: pages,
          locale: Localization.locale,
          fallbackLocale: Localization.fallbackLocale,
          translations: Localization(),
          home: AuthService().handleAuthState(),
        ),
      );
}
