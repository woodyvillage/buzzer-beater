import 'package:buzzer_beater/const/common_const.dart';
import 'package:buzzer_beater/model/form/dto/config_list_dto.dart';
import 'package:buzzer_beater/utility/callback_utility.dart';
import 'package:buzzer_beater/utility/contents_utility.dart';
import 'package:flutter/material.dart';

class ConfigListDao {
  ConfigListDto createDto(
    BuildContext context,
    List<Object> item,
  ) {
    return ConfigListDto(
      keyword: item[indexKeyword].toString(),
      callback: makeCallback(context, item),
      caption: getText(context, item[indexKeyword].toString()),
      command: getDesc(context, item[indexKeyword].toString()),
      width: 100,
    );
  }
}
