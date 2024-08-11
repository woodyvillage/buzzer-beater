import 'package:buzzer_beater/model/form/dto/abstract/base_form_dto.dart';
import 'package:flutter/material.dart';

class FormButtonDto extends BaseFormDto {
  Text? caption;
  Color? foreColor;
  Color? backColor;
  IconData? icon;

  FormButtonDto({
    super.index,
    super.callback,
    this.caption,
    this.foreColor,
    this.backColor,
    this.icon,
  });
}
