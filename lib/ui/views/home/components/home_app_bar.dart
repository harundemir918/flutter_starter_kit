/*
Author: Harun Demir
Date: 26.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/string_constants.dart';
import '../../../../core/widgets/custom_app_bar/custom_app_bar.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) => const CustomAppBar(title: appName);
}
