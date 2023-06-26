/*
Author: Harun Demir
Date: 26.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../core/translations/translation_keys.dart';

class InfoDialogCloseButton extends StatelessWidget {
  const InfoDialogCloseButton({super.key});

  @override
  Widget build(BuildContext context) => Container(
        width: context.getDynamicWidth(0.4),
        height: context.getDynamicHeight(0.15),
        margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
          ),
          child: Text(
            TranslationKeys.close.tr,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      );
}
