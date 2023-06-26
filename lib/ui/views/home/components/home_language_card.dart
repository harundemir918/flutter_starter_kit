/*
Author: Harun Demir
Date: 26.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/base/base_controller.dart';
import '../../../../core/models/language.dart';

class HomeLanguageCard extends StatelessWidget {
  final Language lang;

  const HomeLanguageCard({required this.lang, super.key});

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => BaseController.homeController.changeLanguage(lang),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    lang.flag,
                    style: const TextStyle(fontSize: 18.0),
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    lang.language,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ],
              ),
              if (BaseController.homeController.language.value == lang)
                const Icon(
                  Icons.check_circle,
                  size: 24.0,
                ),
            ],
          ),
        ),
      );
}
