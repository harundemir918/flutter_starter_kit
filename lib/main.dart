import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'core/base/base_controller.dart';
import 'core/constants/string_constants.dart';
import 'core/constants/theme_constants.dart';
import 'core/controllers/admob/admob_controller.dart';
import 'core/controllers/home/home_controller.dart';
import 'core/controllers/theme/theme_controller.dart';
import 'core/translations/languages.dart';
import 'ui/views/splash/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  await GetStorage.init();
  Get
    ..put(AdmobController())
    ..put(ThemeController())
    ..put(HomeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        title: appName,
        debugShowCheckedModeBanner: false,
        translations: Languages(),
        locale: Get.deviceLocale,
        fallbackLocale: const Locale("en", "US"),
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: BaseController.themeController.theme.value,
        home: const SplashView(),
      );
}
