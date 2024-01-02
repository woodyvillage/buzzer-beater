import 'package:flutter/material.dart';
import 'package:buzzer_beater/const/configuration_const.dart';

class ListviewButtonAtoms extends StatelessWidget {
  const ListviewButtonAtoms(
      {super.key, required this.index, required this.callback});
  final int index;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(settingsLists[index][settingCaption]!),
      trailing: OutlinedButton(
        onPressed: callback,
        child: Text(settingsLists[index][settingAction]!),
      ),
    );
  }
}
