import 'package:flutter/material.dart';
import 'package:buzzer_beater/model/form/dto/abstract/base_form_dto.dart';

class FormListDto extends BaseFormDto {
  Text caption;
  Text command;
  double? width;

  FormListDto({
    required super.index,
    required super.callback,
    required this.caption,
    required this.command,
    this.width,
  });
}
