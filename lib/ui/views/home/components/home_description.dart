/*
Author: Harun Demir
Date: 26.06.2023
*/

import 'package:flutter/material.dart';

class HomeDescription extends StatelessWidget {
  const HomeDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Text(
          "This is the homepage. You can change language from below.",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.normal,
          ),
          textAlign: TextAlign.center,
        ),
      );
}
