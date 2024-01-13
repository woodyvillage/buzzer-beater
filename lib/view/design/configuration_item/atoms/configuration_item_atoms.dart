import 'package:flutter/material.dart';
import 'package:buzzer_beater/view/design/listview_button/organisms/listview_button_organisms.dart';
import 'package:buzzer_beater/view/design/wrapper/atoms_widget.dart';

class ConfigurationItemAtoms extends AtomWidget {
  const ConfigurationItemAtoms(
      {super.key, required this.index, required this.callback});
  final int index;
  final VoidCallback callback;

  @override
  Widget buildMaterial(BuildContext context) {
    return ListviewButtonOrganims(
      index: index,
      callback: callback,
    );
  }
}
