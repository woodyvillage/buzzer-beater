import 'package:flutter/material.dart';
import 'package:buzzer_beater/const/configuration_const.dart';
import 'package:buzzer_beater/view/design/wrapper/atoms_widget.dart';

class ListviewButtonAtoms extends AtomWidget {
  const ListviewButtonAtoms(
      {super.key,
      super.padding,
      super.margin,
      required this.index,
      required this.callback});
  final int index;
  final VoidCallback callback;

  @override
  Widget buildMaterial(BuildContext context) {
    return ListTile(
      title: Text(settingsLists[index][settingCaption]),
      trailing: SizedBox(
        width: 120,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          onPressed: callback,
          child: Text(settingsLists[index][settingAction]),
        ),
      ),
    );
  }
}
