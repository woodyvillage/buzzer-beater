import 'package:flutter/material.dart';
import 'package:buzzer_beater/model/form/dto/form_button_dto.dart';
import 'package:buzzer_beater/view/design/wrapper/atoms_widget.dart';

class CommandButtonAtoms extends AtomWidget {
  const CommandButtonAtoms({
    super.key,
    required this.item,
  });
  final FormButtonDto item;

  @override
  Widget buildMaterial(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(item.icon),
      label: item.caption ?? const Text(""),
      style: ElevatedButton.styleFrom(
        foregroundColor: item.foreColor,
        backgroundColor: item.backColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: item.callback,
    );
  }
}
