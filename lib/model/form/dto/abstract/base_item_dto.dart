import 'dart:ui';

abstract class BaseItemDto {
  String type;
  String keyword;
  VoidCallback? callback;

  BaseItemDto({
    required this.type,
    required this.keyword,
    this.callback,
  });
}
