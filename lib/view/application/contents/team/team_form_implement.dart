import 'package:flutter/material.dart';
import 'package:buzzer_beater/const/general_const.dart';
import 'package:buzzer_beater/model/form/dto/form_item_dto.dart';

List<FormItemDto> implementPictureView(BuildContext context) {
  List<FormItemDto> items = [];

  var dto = FormItemDto(
    index: functionTeamImage,
    height: 200,
    width: 200,
    callback: () {
      Navigator.pop(context);
    },
  );
  items.add(dto);
  dto = FormItemDto(
    index: functionTeamButton,
    height: 100,
    width: 100,
    callback: () {
      Navigator.pop(context);
    },
  );
  items.add(dto);
  return items;
}

List<FormItemDto> implementCommandButton(BuildContext context) {
  List<FormItemDto> items = [];

  var dto = FormItemDto(
    index: functionSubmit,
    callback: () {
      Navigator.pop(context);
    },
  );
  items.add(dto);
  dto = FormItemDto(
    index: functionCancel,
    callback: () {
      Navigator.pop(context);
    },
  );
  items.add(dto);
  return items;
}
