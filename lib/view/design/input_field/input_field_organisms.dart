import 'package:flutter/material.dart';
import 'package:buzzer_beater/model/form/dto/form_field_dto.dart';
import 'package:buzzer_beater/view/design/widget/atoms/textform/input_field_atoms.dart';

class InputFieldOrganisms extends StatefulWidget {
  const InputFieldOrganisms({
    super.key,
    required this.item,
  });
  final FormFieldDto item;

  @override
  State createState() => _InputFieldOrganismsState();
}

class _InputFieldOrganismsState extends State<InputFieldOrganisms> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InputFieldAtoms(
      item: widget.item,
    );
  }
}
