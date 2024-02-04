import 'package:buzzer_beater/model/form/dto/abstract/base_form_dto.dart';
import 'package:flutter/material.dart';

class FormPictureDto extends BaseFormDto {
  double? height;
  double? width;
  Image? image;

  FormPictureDto({
    required super.index,
    super.callback,
    this.height,
    this.width,
    this.image,
  });
}
