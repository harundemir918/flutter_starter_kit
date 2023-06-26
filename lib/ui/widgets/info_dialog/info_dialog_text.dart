/*
Author: Harun Demir
Date: 26.06.2023
*/

import 'package:flutter/material.dart';

class InfoDialogText extends StatelessWidget {
  final String text;

  const InfoDialogText({required this.text, super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      );
}
