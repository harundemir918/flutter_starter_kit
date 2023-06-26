/*
Author: Harun Demir
Date: 26.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/translations/translation_keys.dart';

class HomeDescription extends StatelessWidget {
  const HomeDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Text(
          TranslationKeys.description.tr,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.normal,
              ),
          textAlign: TextAlign.center,
        ),
      );
}
