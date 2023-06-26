/*
Author: Harun Demir
Date: 16.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/data/languages_list.dart';
import 'home_language_card.dart';

class HomeLanguageList extends StatelessWidget {
  const HomeLanguageList({super.key});

  @override
  Widget build(BuildContext context) => ListView.builder(
        shrinkWrap: true,
        itemCount: languagesList.length,
        itemBuilder: (context, index) =>
            HomeLanguageCard(lang: languagesList[index]),
      );
}
