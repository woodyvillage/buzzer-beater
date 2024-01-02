import 'package:flutter/material.dart';
import 'package:buzzer_beater/const/configuration_const.dart';
import 'package:buzzer_beater/view/design/wrapper/atoms_widget.dart';

class MessageDialogAtoms extends AtomWidget {
  const MessageDialogAtoms(
      {super.key, super.padding, super.margin, required this.index});
  final int index;

  @override
  Widget buildMaterial(BuildContext context) {
    MaterialLocalizations localizations = MaterialLocalizations.of(context);
    final List<Widget> actions = [
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(localizations.okButtonLabel),
        onPressed: () => Navigator.pop<bool>(context, true),
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
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
