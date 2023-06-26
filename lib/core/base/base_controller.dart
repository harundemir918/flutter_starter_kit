/*
Author: Harun Demir
Date: 26.06.2023
*/

import 'package:get/get.dart';

import '../controllers/admob/admob_controller.dart';
import '../controllers/home/home_controller.dart';
import '../controllers/theme/theme_controller.dart';

class BaseController {
  static HomeController homeController = Get.find<HomeController>();
  static AdmobController admobController = Get.find<AdmobController>();
  static ThemeController themeController = Get.find<ThemeController>();
}
