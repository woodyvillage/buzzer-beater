import 'package:flutter/material.dart';
import 'package:buzzer_beater/model/form/dto/abstract/base_form_dto.dart';
import 'package:buzzer_beater/view/design/wrapper/atoms_widget.dart';

class OverlayButtonAtoms extends AtomWidget {
  const OverlayButtonAtoms({
    super.key,
    required this.callback,
  });
  final BaseFormDto callback;

  @override
  Widget buildMaterial(BuildContext context) {
    return MaterialButton(
      height: 100,
      minWidth: 100,
      onPressed: callback.callback,
      child: const Text(
        '+',
        style: TextStyle(fontSize: 60),
      ),
    );
  }
}
