import 'package:flutter/material.dart';
import 'package:buzzer_beater/const/configuration_const.dart';

class MessageDialogAtoms extends StatelessWidget {
  const MessageDialogAtoms({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    MaterialLocalizations localizations = MaterialLocalizations.of(context);
    final List<Widget> actions = [
      ElevatedButton(
        child: Text(localizations.okButtonLabel),
        onPressed: () => Navigator.pop<bool>(context, true),
      ),
      ElevatedButton(
        child: Text(localizations.cancelButtonLabel),
        onPressed: () => Navigator.pop<bool>(context, false),
      ),
    ];
    final AlertDialog dialog = AlertDialog(
      title: Text(settingsLists[index][settingAction]),
      content: Text(settingsLists[index][settingConfirm]),
      actions: actions,
    );

    return dialog;
  }
}
