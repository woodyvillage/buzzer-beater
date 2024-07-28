import 'package:buzzer_beater/model/form/dto/abstract/base_form_dto.dart';
import 'package:flutter/material.dart';

class ConfigListDto extends BaseFormDto {
  Text caption;
  Text command;
  double? width;

  ConfigListDto({
    required super.callback,
    required this.caption,
    required this.command,
    this.width,
  });
}
