/*
Author: Harun Demir
Date: 26.06.2023
*/

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class BannerAdWidget extends StatelessWidget {
  final BannerAd bannerAd;

  const BannerAdWidget({required this.bannerAd, super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
        width: bannerAd.size.width.toDouble(),
        height: bannerAd.size.height.toDouble(),
        child: AdWidget(
          ad: bannerAd,
        ),
      );
}
