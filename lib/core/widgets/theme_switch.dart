import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../base/base_controller.dart';
import '../extensions/context_extension.dart';

class ThemeSwitch extends StatefulWidget {
  const ThemeSwitch({Key? key}) : super(key: key);

  @override
  State<ThemeSwitch> createState() => _ThemeSwitchState();
}

class _ThemeSwitchState extends State<ThemeSwitch> {
  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () {
          BaseController.themeController.changeTheme(
            BaseController.themeController.isDark.value
                ? ThemeMode.light
                : ThemeMode.dark,
          );
        },
        child: Obx(
          () => Container(
            width: context.getDynamicWidth(0.1),
            color: Colors.transparent,
            child: Center(
              child: Icon(
                BaseController.themeController.isDark.value
                    ? Icons.light_mode
                    : Icons.dark_mode,
              ),
            ),
          ),
        ),
      );
}
