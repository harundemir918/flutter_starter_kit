/*
Author: Harun Demir
Date: 26.06.2023
*/

import 'package:get/get.dart';

import 'langs/de.dart';
import 'langs/en.dart';
import 'langs/tr.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": enTranslations,
        "tr_TR": trTranslations,
        "de_DE": deTranslations,
      };
}
