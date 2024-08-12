import 'dart:ui';

abstract class BaseItemDto {
  String keyword;
  VoidCallback? callback;

  BaseItemDto({
    required this.keyword,
    this.callback,
  });
}
