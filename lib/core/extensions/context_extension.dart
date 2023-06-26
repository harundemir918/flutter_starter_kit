import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double getWidth() => MediaQuery.of(this).size.width;
  double getHeight() => MediaQuery.of(this).size.height;
  double getDynamicWidth(double value) =>
      MediaQuery.of(this).size.width * value;
  double getDynamicHeight(double value) =>
      MediaQuery.of(this).size.width * value;
}
