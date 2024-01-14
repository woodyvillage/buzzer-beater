import 'package:flutter/material.dart';
import 'package:buzzer_beater/view/design/widget/atoms/dialog/message_dialog_atoms.dart';

class DialogService {
  static Future showMessageDialog({
    required BuildContext context,
    required int index,
  }) {
    Widget dialog;
    dialog = MessageDialogAtoms(index: index);
    return showDialog(
      context: context,
      useRootNavigator: true,
      builder: (BuildContext context) {
        return dialog;
      },
    );
  }
}
