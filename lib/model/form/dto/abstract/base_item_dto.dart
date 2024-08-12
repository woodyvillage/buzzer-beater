import 'dart:ui';

abstract class BaseItemDto {
  String key;
  VoidCallback? callback;

  BaseItemDto({
    required this.key,
    this.callback,
  });
}
