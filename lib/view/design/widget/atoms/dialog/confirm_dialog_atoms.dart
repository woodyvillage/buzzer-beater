import 'package:buzzer_beater/view/design/wrapper/atom_widget.dart';
import 'package:flutter/material.dart';

class ConfirmDialogAtoms extends AtomWidget {
  const ConfirmDialogAtoms({
    super.key,
    required this.title,
    this.content,
    required this.actions,
  });
  final Text title;
  final Widget? content;
  final List<Widget> actions;

  @override
  Widget buildMaterial(BuildContext context) {
    if (content == null) {
      return AlertDialog(
        title: title,
        actions: actions,
      );
    } else {
      return AlertDialog(
        title: title,
        content: content,
        actions: actions,
      );
    }
  }
}
