/*
Author: Harun Demir
Date: 26.06.2023
*/

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../data/languages_list.dart';
import '../../models/language.dart';

class HomeController extends GetxController {
  final _storage = GetStorage();
  Rx<Language> language = languagesList.first.obs;

  @override
  void onInit() {
    getLanguage();
    super.onInit();
  }

  void getLanguage() {
    language.value = languagesList.firstWhereOrNull(
            (lang) => lang.locale.languageCode == _storage.read("locale")) ??
        languagesList.first;
    Future.delayed(
      const Duration(seconds: 1),
      () => Get.updateLocale(language.value.locale),
    );
  }

  void changeLanguage(Language lang) {
    language.value = lang;
    Get.updateLocale(lang.locale);
    _storage.write("locale", lang.locale.languageCode);
  }
}
