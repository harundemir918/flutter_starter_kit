import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  final _getStorage = GetStorage();
  Rx<ThemeMode> theme = ThemeMode.light.obs;
  RxBool isDark = false.obs;

  ThemeController() {
    getTheme();
  }

  void getTheme() {
    isDark.value = _getStorage.read('isDark') ?? false;
    theme.value = isDark.value ? ThemeMode.dark : ThemeMode.light;
  }

  void changeTheme(ThemeMode themeMode) {
    theme.value = themeMode;
    isDark.value = themeMode == ThemeMode.dark;
    _getStorage.write("isDark", isDark.value);
    Get.changeThemeMode(themeMode);
  }
}
