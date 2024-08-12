import 'package:buzzer_beater/model/form/dto/form_item_dto.dart';
import 'package:buzzer_beater/view/design/wrapper/atom_widget.dart';
import 'package:flutter/material.dart';

class SimpleDialogAtoms extends AtomWidget {
  const SimpleDialogAtoms({
    super.key,
    required this.item,
    required this.actions,
  });
  final FormItemDto item;
  final List<Widget> actions;

  @override
  Widget buildMaterial(BuildContext context) {
    if (content == null) {
    return AlertDialog(
      insetPadding: const EdgeInsets.all(15),
      title: Text(item.caption),
      content: const SizedBox(
        width: 400,
        height: 0,
      ),
      actions: actions,
    );
    } else {
      return AlertDialog(
        insetPadding: const EdgeInsets.all(15),
        title: title,
        // content: content,
        content: SizedBox(
          width: 400,
          child: content,
        ),
        actions: actions,
      );
    }
  }
}
