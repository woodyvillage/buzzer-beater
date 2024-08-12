import 'package:buzzer_beater/model/form/dto/abstract/base_item_dto.dart';
import 'package:flutter/material.dart';

class FormButtonDto extends BaseItemDto {
  String caption;
  Color? foreColor;
  Color? backColor;
  IconData? icon;

  FormButtonDto({
    required super.type,
    required super.keyword,
    required super.callback,
    required this.caption,
    this.foreColor,
    this.backColor,
    this.icon,
  });
}
