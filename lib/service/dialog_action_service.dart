import 'package:buzzer_beater/model/form/dao/form_item_dao.dart';
import 'package:buzzer_beater/model/form/dto/form_item_dto.dart';
import 'package:buzzer_beater/view/dialog/application_dialog.dart';
import 'package:flutter/material.dart';

class DialogActionService {
  static notification(
    BuildContext context,
    List<Object> list,
  ) async {
    bool result;
    try {
      FormItemDao dao = FormItemDao();
      FormItemDto dto = dao.createDto(context, list, false, []);
      result = await applicationDialog(
        context: context,
        item: dto,
      );
    } catch (e) {
      result = false;
    }
    return result;
  }
}
