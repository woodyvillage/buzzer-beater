import 'package:buzzer_beater/view/design/widget/molecules/confirm_dialog_molecules.dart';
import 'package:flutter/material.dart';

class ConfirmDialogOrganisms extends StatefulWidget {
  const ConfirmDialogOrganisms({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State createState() => _ConfirmDialogOrganismsState();
}

class _ConfirmDialogOrganismsState extends State<ConfirmDialogOrganisms> {
  @override
  Widget build(BuildContext context) {
    return ConfirmDialogMolecules(title: widget.title);
  }
}
