import 'package:buzzer_beater/model/form/dto/config_list_dto.dart';
import 'package:buzzer_beater/view/design/wrapper/atom_widget.dart';
import 'package:flutter/material.dart';

class ConfigurationItemAtoms extends AtomWidget {
  const ConfigurationItemAtoms({
    super.key,
    required this.item,
  });
  final ConfigListDto item;

  @override
  Widget buildMaterial(BuildContext context) {
    return ListTile(
      title: item.caption,
      trailing: SizedBox(
        width: item.width,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          onPressed: item.callback,
          child: item.command,
        ),
      ),
    );
  }
}
