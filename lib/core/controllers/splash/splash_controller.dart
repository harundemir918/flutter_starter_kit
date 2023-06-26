/*
Author: Harun Demir
Date: 26.06.2023
*/

import 'package:get/get.dart';

import '../../../ui/views/home/home_view.dart';

class SplashController extends GetxController {
  void openHomeView() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() => const HomeView());
    });
  }
}
