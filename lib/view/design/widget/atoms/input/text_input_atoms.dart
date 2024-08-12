import 'package:buzzer_beater/model/form/dto/form_item_dto.dart';
import 'package:buzzer_beater/view/design/wrapper/atom_widget.dart';
import 'package:flutter/material.dart';

class TextInputAtoms extends AtomWidget {
  const TextInputAtoms({
    super.key,
    required this.controller,
    required this.item,
  });
  final TextEditingController controller;
  final FormItemDto item;

  @override
  Widget buildMaterial(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: item.caption,
          labelStyle: TextStyle(
            fontSize: 16,
            color: Colors.green[300],
          ),
          floatingLabelStyle: const TextStyle(fontSize: 16),
          hintText: item.command,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Colors.green,
              width: 2.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Colors.green,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
