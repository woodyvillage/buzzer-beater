import 'package:buzzer_beater/view/design/wrapper/atom_widget.dart';
import 'package:flutter/material.dart';

class SeparatorAtoms extends AtomWidget {
  const SeparatorAtoms({
    super.key,
    required this.width,
  });
  final double width;

  @override
  Widget buildMaterial(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: width));
  }
}
