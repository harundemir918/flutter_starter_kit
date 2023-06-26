import 'package:flutter/material.dart';

import 'info_dialog_body.dart';
import 'info_dialog_close_button.dart';

class InfoDialog extends StatelessWidget {
  const InfoDialog({super.key});

  @override
  Widget build(BuildContext context) => AlertDialog(
        contentPadding: const EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        content: const InfoDialogBody(),
        actions: const [
          InfoDialogCloseButton(),
        ],
      );
}
