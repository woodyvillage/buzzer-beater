import 'package:buzzer_beater/model/form/dto/abstract/base_item_dto.dart';
import 'package:flutter/material.dart';

class FormItemDto extends BaseItemDto {
  String caption;
  String description;
  IconData? icon;
  TextEditingController? control;
  String? image;

  FormItemDto({
    required super.type,
    required super.keyword,
    super.callback,
    required this.caption,
    required this.description,
    this.icon,
    this.control,
    this.image,
  });
}
