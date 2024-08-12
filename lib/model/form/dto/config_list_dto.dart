import 'package:buzzer_beater/model/form/dto/abstract/base_item_dto.dart';
import 'package:flutter/material.dart';

class ConfigListDto extends BaseItemDto {
  String caption;
  String command;
  double? width;
  IconData? icon;

  ConfigListDto({
    required super.keyword,
    required super.callback,
    required this.caption,
    required this.command,
    this.icon,
    this.width = 120,
  });
}
