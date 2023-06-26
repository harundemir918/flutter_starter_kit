/*
Author: Harun Demir
Date: 26.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extension.dart';
import 'home_description.dart';
import 'home_language_list.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) => Container(
        width: context.getWidth(),
        height: context.getHeight(),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HomeDescription(),
            SizedBox(
              height: context.getDynamicHeight(0.5),
              child: const HomeLanguageList(),
            ),
          ],
        ),
      );
}
