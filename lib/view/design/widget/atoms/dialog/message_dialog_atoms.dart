import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:buzzer_beater/const/common_const.dart';
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      title: Text(AppLocalizations.of(context)!
          .configure_DISP(settingsLists[index][indexKey])),
      content: Text(AppLocalizations.of(context)!
          .configure_DESC(settingsLists[index][indexKey])),
      actions: actions,
    );

    return dialog;
  }
}
