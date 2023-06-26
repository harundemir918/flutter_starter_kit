/*
Author: Harun Demir
Date: 26.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/string_constants.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Center(
        child: SizedBox(
          width: 150,
          child: Image.asset(appLogo),
        ),
      );
}
