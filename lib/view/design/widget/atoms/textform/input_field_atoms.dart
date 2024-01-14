import 'package:flutter/material.dart';
import 'package:buzzer_beater/model/form/dto/form_field_dto.dart';
import 'package:buzzer_beater/view/design/wrapper/atoms_widget.dart';

class InputFieldAtoms extends AtomWidget {
  const InputFieldAtoms({
    super.key,
    required this.item,
  });
  final FormFieldDto item;

  @override
  Widget buildMaterial(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
      child: TextFormField(
        enabled: true,
        autofocus: false,
        // focusNode: _form[0].node,
        // controller: _form[0].controller,
        keyboardType: item.keytype,
        maxLines: 1,
        // maxLength: teamNameLength,
        textAlignVertical: TextAlignVertical.center,
        obscureText: false,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide(width: 3.0),
          ),
          hintText: item.hint ?? "",
          labelText: item.caption,
        ),
      ),
    );
  }
}
