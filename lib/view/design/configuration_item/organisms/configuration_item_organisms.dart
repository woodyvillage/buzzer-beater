import 'package:flutter/material.dart';
import 'package:buzzer_beater/utility/callback_utility.dart';
import 'package:buzzer_beater/view/design/configuration_item/atoms/configuration_item_atoms.dart';

class ConfigurationItemOrganisms extends StatefulWidget {
  const ConfigurationItemOrganisms({super.key, required this.index});
  final int index;

  @override
  State createState() => _ConfigurationItemOrganismsState();
}

class _ConfigurationItemOrganismsState
    extends State<ConfigurationItemOrganisms> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ConfigurationItemAtoms(
      index: widget.index,
      callback: makeCallback(context, widget.index),
    );
  }
}
