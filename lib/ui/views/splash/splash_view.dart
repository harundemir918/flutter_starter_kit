import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_view.dart';
import 'components/splash_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    _openHomeView();
    super.initState();
  }

  void _openHomeView() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() => const HomeView());
    });
  }

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: SplashBody(),
      );
}
