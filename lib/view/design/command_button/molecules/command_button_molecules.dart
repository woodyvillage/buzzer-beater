import 'package:flutter/material.dart';
import 'package:buzzer_beater/model/form/dto/form_item_dto.dart';
import 'package:buzzer_beater/view/design/command_button/atoms/command_button_atoms.dart';
import 'package:buzzer_beater/view/design/command_button/atoms/separator_atoms.dart';
import 'package:buzzer_beater/view/design/wrapper/molecules_widget.dart';

class CommandButtonMolecules extends MoleculeWidget {
  const CommandButtonMolecules({
    super.key,
    required this.items,
  });
  final List<FormItemDto> items;

  @override
  Widget buildMolecule(final BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: buildMolecules(context),
      ),
    );
  }

  List<Widget> buildMolecules(final BuildContext context) {
    List<Widget> containers = [];
    for (int i = 0; i < items.length; i++) {
      if (i != 0) {
        containers.add(const SeparatorAtoms(width: 5));
      }
      containers.add(CommandButtonAtoms(item: items[i]));
    }
    return containers;
  }
}
