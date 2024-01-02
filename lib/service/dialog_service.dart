import 'package:buzzer_beater/view/design/message_dialog/atoms/message_dialog_atoms.dart';
import 'package:flutter/material.dart';

Future showMessageDialog({
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
