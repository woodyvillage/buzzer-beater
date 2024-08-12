import 'package:buzzer_beater/model/form/dto/config_list_dto.dart';
import 'package:buzzer_beater/model/form/dto/form_button_dto.dart';
import 'package:buzzer_beater/view/design/widget/atoms/button/general_button_atoms.dart';
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
    return ListTile(
      title: Text(item.caption),
      trailing: SizedBox(
        width: item.width,
        child: GeneralButtonAtoms(
          item: buildButton(item),
        ),
      ),
    );
  }

  FormButtonDto buildButton(ConfigListDto item) {
    return FormButtonDto(
      type: item.type,
      keyword: item.keyword,
      caption: item.command,
      foreColor: Colors.white,
      backColor: Colors.green,
      callback: item.callback,
    );
  }
}
