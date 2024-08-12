import 'package:buzzer_beater/model/form/dto/form_button_dto.dart';
import 'package:buzzer_beater/view/design/wrapper/atom_widget.dart';
import 'package:flutter/material.dart';

class GeneralIconButtonAtoms extends AtomWidget {
  const GeneralIconButtonAtoms({
    super.key,
    required this.item,
  });
  final FormButtonDto item;

  @override
  Widget buildMaterial(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(item.icon),
      label: Text(item.caption),
      onPressed: item.callback,
      style: ElevatedButton.styleFrom(
        foregroundColor: item.foreColor,
        backgroundColor: item.backColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
