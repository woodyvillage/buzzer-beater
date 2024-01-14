import 'dart:io';
import 'package:flutter/material.dart';

class FormItemDto {
  String index;
  VoidCallback callback;
  Text? caption;
  Text? hint;
  Color? foreColor;
  Color? backColor;
  IconData? icon;
  double? height;
  double? width;
  File? image;

  FormItemDto({
    required this.index,
    required this.callback,
    this.caption,
    this.hint,
    this.foreColor,
    this.backColor,
    this.icon,
    this.height,
    this.width,
    this.image,
  });
}
