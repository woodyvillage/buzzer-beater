import 'package:buzzer_beater/model/form/dto/config_list_dto.dart';
import 'package:buzzer_beater/view/design/widget/atoms/list/configuration_item_atoms.dart';
import 'package:buzzer_beater/view/design/wrapper/molecules_widget.dart';
import 'package:flutter/material.dart';

class ConfigurationItemMolecules extends MoleculeWidget {
  const ConfigurationItemMolecules({
    super.key,
    required this.item,
  });
  final ConfigListDto item;

  @override
  Widget buildMolecule(final BuildContext context) {
    return ConfigurationItemAtoms(
      item: item,
    );
  }
}
