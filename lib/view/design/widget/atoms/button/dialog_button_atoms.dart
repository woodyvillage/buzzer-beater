import 'package:buzzer_beater/view/design/wrapper/atom_widget.dart';
import 'package:flutter/material.dart';

class DialogButtonAtoms extends AtomWidget {
  const DialogButtonAtoms({
    super.key,
    required this.title,
    required this.callback,
  });
  final String title;
  final VoidCallback callback;

  @override
  Widget buildMaterial(BuildContext context) {
    return TextButton(
      onPressed: callback,
      child: Text(title),
    );
  }
}
