/*
Author: Harun Demir
Date: 26.06.2023
*/

import 'package:flutter/material.dart';

import '../../../core/constants/string_constants.dart';

class InfoDialogTitle extends StatelessWidget {
  const InfoDialogTitle({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          appName,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      );
}
