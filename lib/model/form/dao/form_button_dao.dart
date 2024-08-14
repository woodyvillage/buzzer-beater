import 'package:buzzer_beater/const/application_const.dart';
import 'package:buzzer_beater/const/common_const.dart';
import 'package:buzzer_beater/model/form/dto/form_button_dto.dart';
import 'package:buzzer_beater/utility/callback_utility.dart';
import 'package:buzzer_beater/utility/contents_utility.dart';
import 'package:flutter/material.dart';

class FormButtonDao {
  List<FormButtonDto> createList(
    BuildContext context,
    List<Object> item,
  ) {
    List<FormButtonDto> command = [];
    // 返却値に入っているボタン種別
    switch (item[indexReturn]) {
      case typeYesNo:
        for (int i = 0; i < commandYesNoLists.length; i++) {
          command.add(createDto(context, commandYesNoLists[i]));
        }
        break;
      default:
    }
    return command;
  }

  FormButtonDto createDto(
    BuildContext context,
    List<Object> item,
  ) {
    return FormButtonDto(
      type: item[indexType].toString(),
      keyword: item[indexKeyword].toString(),
      callback: makeCallback(context, item),
      caption: getText(context, item[indexKeyword].toString()),
      foreColor: getColor(item[indexForecolor].toString()),
      backColor: getColor(item[indexBackcolor].toString()),
      icon: getIcon(item[indexIcon].toString()),
    );
  }
}
