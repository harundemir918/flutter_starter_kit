/*
Author: Harun Demir
Date: 26.06.2023
*/

import 'package:get/get.dart';

import '../controllers/admob/admob_controller.dart';
import '../controllers/home/home_controller.dart';
import '../controllers/splash/splash_controller.dart';
import '../controllers/theme/theme_controller.dart';
import '../controllers/update/update_controller.dart';

class BaseController {
  static SplashController splashController = Get.find<SplashController>();
  static HomeController homeController = Get.find<HomeController>();
  static AdmobController admobController = Get.find<AdmobController>();
  static ThemeController themeController = Get.find<ThemeController>();
  static UpdateController updateController = Get.find<UpdateController>();
}
