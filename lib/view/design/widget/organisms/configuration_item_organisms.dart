import 'package:buzzer_beater/model/form/dao/config_list_dao.dart';
import 'package:buzzer_beater/view/design/widget/molecules/configuration_item_molecules.dart';
import 'package:flutter/material.dart';

class ConfigurationItemOrganisms extends StatefulWidget {
  const ConfigurationItemOrganisms({
    super.key,
    required this.item,
  });
  final List<Object> item;

  @override
  State createState() => _ConfigurationItemOrganismsState();
}

class _ConfigurationItemOrganismsState
    extends State<ConfigurationItemOrganisms> {
  @override
  Widget build(BuildContext context) {
    ConfigListDao dao = ConfigListDao();
    return ConfigurationItemMolecules(
        item: dao.createDto(context, widget.item));
  }
}
