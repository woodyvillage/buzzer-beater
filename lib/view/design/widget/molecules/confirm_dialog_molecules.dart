import 'package:buzzer_beater/utility/callback_utility.dart';
import 'package:buzzer_beater/utility/contents_utility.dart';
import 'package:buzzer_beater/view/design/widget/atoms/button/dialog_button_atoms.dart';
import 'package:buzzer_beater/view/design/widget/atoms/dialog/simple_dialog_atoms.dart';
import 'package:buzzer_beater/view/design/wrapper/molecules_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ConfirmDialogMolecules extends MoleculeWidget {
  const ConfirmDialogMolecules({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget buildMolecule(final BuildContext context) {
    return SimpleDialogAtoms(
      title: getText(context, title),
      actions: buildMolecules(context),
    );
  }

  List<Widget> buildMolecules(final BuildContext context) {
    List<Widget> containers = [];
    containers.add(DialogButtonAtoms(
      title: AppLocalizations.of(context)!.cancel,
      callback: makeReturnCallback(context),
    ));
    containers.add(DialogButtonAtoms(
      title: AppLocalizations.of(context)!.submit,
      callback: makeAcceptCallback(context),
    ));
    return containers;
  }
}
