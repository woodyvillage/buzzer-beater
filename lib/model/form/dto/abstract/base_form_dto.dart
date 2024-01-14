import 'dart:ui';

abstract class BaseFormDto {
  String index;
  VoidCallback callback;

  BaseFormDto({
    required this.index,
    required this.callback,
  });
}
