import 'package:buzzer_beater/const/common_const.dart';
import 'package:buzzer_beater/model/form/dto/form_item_dto.dart';
import 'package:buzzer_beater/utility/contents_utility.dart';
import 'package:flutter/material.dart';

class FormItemDao {
  FormItemDto createDto(
    BuildContext context,
    List<Object> item,
    bool hasCallback,
  ) {
    FormItemDto dto = _create(context, item);
    if (hasCallback) {
      dto.keyword = item[indexKeyword].toString();
    }
    return dto;
  }

  FormItemDto _create(
    BuildContext context,
    List<Object> item,
  ) {
    return FormItemDto(
      keyword: item[indexKeyword].toString(),
      caption: getText(context, item[indexKeyword].toString()),
      command: getDesc(context, item[indexKeyword].toString()),
    );
  }
}
