import 'package:buzzer_beater/model/form/dto/form_item_dto.dart';
import 'package:buzzer_beater/view/design/widget/atoms/input/text_input_atoms.dart';
import 'package:buzzer_beater/view/design/wrapper/molecules_widget.dart';
import 'package:flutter/material.dart';

class TextInputMolecules extends MoleculeWidget {
  const TextInputMolecules({
    super.key,
    required this.item,
  });
  final FormItemDto item;

  @override
  Widget buildMolecule(final BuildContext context) {
    TextEditingController controller = TextEditingController();
    return TextInputAtoms(
      controller: controller,
      item: item,
    );
  }
}
