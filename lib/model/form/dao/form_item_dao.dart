import 'package:buzzer_beater/const/common_const.dart';
import 'package:buzzer_beater/model/form/dto/form_item_dto.dart';
import 'package:buzzer_beater/utility/callback_utility.dart';
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
      dto.callback = makeCallback(context, item);
    }
    return dto;
  }

  FormItemDto _create(
    BuildContext context,
    List<Object> item,
  ) {
    return FormItemDto(
      type: item[indexType].toString(),
      keyword: item[indexKeyword].toString(),
      caption: getText(context, item[indexKeyword].toString()),
      description: getDesc(context, item[indexKeyword].toString()),
    );
  }
}
