import 'package:buzzer_beater/model/form/dto/form_button_dto.dart';
import 'package:buzzer_beater/view/design/wrapper/atom_widget.dart';
import 'package:flutter/material.dart';

class GeneralButtonAtoms extends AtomWidget {
  const GeneralButtonAtoms({
    super.key,
    required this.item,
  });
  final FormButtonDto item;

  @override
  Widget buildMaterial(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: item.foreColor,
        backgroundColor: item.backColor,
        minimumSize: const Size(100, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: item.callback,
      child: Text(item.caption),
    );
  }
}
