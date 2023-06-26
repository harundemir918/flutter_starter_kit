import 'package:flutter/material.dart';

import '../../../core/base/base_controller.dart';
import 'components/splash_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    BaseController.splashController.openHomeView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: SplashBody(),
      );
}
