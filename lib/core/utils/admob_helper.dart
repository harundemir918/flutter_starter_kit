import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../config/config.dart';

class AdmobHelper {
  static AdmobHelper? _instance;

  static String get homeBannerID => homeBannerAdID;

  factory AdmobHelper() {
    _instance ??= AdmobHelper._();
    return _instance!;
  }

  AdmobHelper._();

  Future<void> createBannerAd(
    String adUnitId,
    Function(Ad) onAdLoaded,
    Function(Ad, LoadAdError) onAdFailedToLoad,
    BuildContext context,
  ) async {
    final size = await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(
      MediaQuery.of(context).size.width.truncate(),
    );

    if (size == null) {
      return;
    }

    BannerAd(
      adUnitId: adUnitId,
      size: size,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) async {
          onAdLoaded(ad);
        },
        onAdFailedToLoad: (ad, error) {
          onAdFailedToLoad(ad, error);
          ad.dispose();
        },
      ),
    ).load();
  }
}
