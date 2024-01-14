import 'package:flutter/material.dart';
import 'package:buzzer_beater/model/form/dto/abstract/base_form_dto.dart';

class FormFieldDto extends BaseFormDto {
  String caption;
  String? hint;
  TextInputType? keytype;

  FormFieldDto({
    required super.index,
    super.callback,
    required this.caption,
    this.hint,
    this.keytype,
  });
}
