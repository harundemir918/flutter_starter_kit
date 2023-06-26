/*
Author: Harun Demir
Date: 26.06.2023
*/

import 'package:flutter/material.dart';

import '../../../core/constants/string_constants.dart';

class InfoDialogImage extends StatelessWidget {
  const InfoDialogImage({super.key});

  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: CircleAvatar(
          radius: 60.0,
          backgroundImage: AssetImage(appLogo),
        ),
      );
}
