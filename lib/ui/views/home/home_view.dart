import 'package:flutter/material.dart';

import '../../../core/base/base_controller.dart';
import 'components/home_app_bar.dart';
import 'components/home_banner_ad_card.dart';
import 'components/home_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    BaseController.admobController.createHomeBannerAd(context);
    super.initState();
  }

  @override
  void dispose() {
    BaseController.admobController.disposeHomeBannerAd();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => const Scaffold(
        appBar: HomeAppBar(),
        body: HomeBody(),
        extendBody: true,
        bottomNavigationBar: HomeBannerAdCard(),
      );
}
