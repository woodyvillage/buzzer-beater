import 'package:buzzer_beater/const/common_const.dart';
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
      // onPressed: () => {},
      onPressed: item.callback,
      style: ElevatedButton.styleFrom(
        foregroundColor: item.foreColor,
        backgroundColor: item.backColor,
        minimumSize: const Size(100, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: item.caption ?? const Text(stringNull),
    );
  }
}
