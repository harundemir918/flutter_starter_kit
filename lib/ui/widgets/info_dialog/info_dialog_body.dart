/*
Author: Harun Demir
Date: 26.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/string_constants.dart';
import '../../../core/translations/translation_keys.dart';
import 'info_dialog_image.dart';
import 'info_dialog_text.dart';
import 'info_dialog_title.dart';

class InfoDialogBody extends StatelessWidget {
  const InfoDialogBody({super.key});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const InfoDialogImage(),
          const InfoDialogTitle(),
          InfoDialogText(text: TranslationKeys.appDescription.tr),
          const InfoDialogText(text: appAuthorName),
          InfoDialogText(
            text: TranslationKeys.appVersion.trParams(
              {
                "appVersion": version,
              },
            ),
          ),
        ],
      );
}
