import 'package:buzzer_beater/model/form/dto/abstract/base_item_dto.dart';
import 'package:buzzer_beater/model/form/dto/form_button_dto.dart';
import 'package:flutter/material.dart';

class FormItemDto extends BaseItemDto {
  String caption;
  String command;
  IconData? icon;
  TextEditingController? control;
  String? image;
  List<FormButtonDto>? button;

  FormItemDto({
    required super.type,
    required super.keyword,
    super.callback,
    required this.caption,
    required this.command,
    this.icon,
    this.control,
    this.image,
    this.button,
  });
}
