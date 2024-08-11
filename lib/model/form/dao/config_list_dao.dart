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
      callback: makeCallback(context, item),
      caption: getText(context, item[indexKey].toString()),
      command: getDesc(context, item[indexKey].toString()),
      width: 100,
    );
  }
}
