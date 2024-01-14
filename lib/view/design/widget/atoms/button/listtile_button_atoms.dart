import 'package:flutter/material.dart';
import 'package:buzzer_beater/model/form/dto/form_list_dto.dart';
import 'package:buzzer_beater/view/design/wrapper/atoms_widget.dart';

class ListtileButtonAtoms extends AtomWidget {
  const ListtileButtonAtoms({
    super.key,
    required this.item,
  });
  final FormListDto item;

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
