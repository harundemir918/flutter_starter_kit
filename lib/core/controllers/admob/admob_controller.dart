/*
Author: Harun Demir
Date: 26.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../utils/admob_helper.dart';

class AdmobController extends GetxController {
  final AdmobHelper _admobHelper = AdmobHelper();
  Rxn<BannerAd> homeBannerAd = Rxn<BannerAd>();
  RxBool isHomeBannerAdLoaded = false.obs;

  void createHomeBannerAd(BuildContext context) async {
    if (homeBannerAd.value == null || !isHomeBannerAdLoaded.value) {
      Future.delayed(
        const Duration(milliseconds: 100),
        () => _admobHelper.createBannerAd(
          AdmobHelper.homeBannerID,
          (Ad ad) {
            homeBannerAd.value = ad as BannerAd;
            isHomeBannerAdLoaded.value = true;
          },
          (Ad ad, LoadAdError error) {
            ad.dispose();
          },
          context,
        ),
      );
    }
  }

  void disposeHomeBannerAd() {
    homeBannerAd.value?.dispose();
    isHomeBannerAdLoaded.value = false;
  }
}
