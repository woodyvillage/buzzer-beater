import 'package:buzzer_beater/model/form/dto/form_item_dto.dart';
import 'package:buzzer_beater/view/design/widget/atoms/button/general_icon_button_atoms.dart';
import 'package:buzzer_beater/view/design/widget/atoms/padding/separator_atoms.dart';
import 'package:buzzer_beater/view/design/wrapper/molecules_widget.dart';
import 'package:flutter/material.dart';

class CommandButtonMolecules extends MoleculeWidget {
  const CommandButtonMolecules({
    super.key,
    required this.item,
  });
  final FormItemDto item;

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
    for (int i = 0; i < item.button!.length; i++) {
      if (i != 0) {
        containers.add(const SeparatorAtoms(width: 5));
      }
      containers.add(GeneralIconButtonAtoms(item: item.button![i]));
    }
    return containers;
  }
}
