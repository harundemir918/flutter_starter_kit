/*
Author: Harun Demir
Date: 26.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/base/base_controller.dart';
import '../../../../core/widgets/banner_ad_widget.dart';

class HomeBannerAdCard extends StatelessWidget {
  const HomeBannerAdCard({super.key});

  @override
  Widget build(BuildContext context) => Obx(
        () => BaseController.admobController.isHomeBannerAdLoaded.value
            ? BannerAdWidget(
                bannerAd: BaseController.admobController.homeBannerAd.value!)
            : const SizedBox.shrink(),
      );
}
