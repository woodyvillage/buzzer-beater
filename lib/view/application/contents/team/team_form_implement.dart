import 'package:buzzer_beater/model/form/dto/form_button_dto.dart';
import 'package:flutter/material.dart';
import 'package:buzzer_beater/const/general_const.dart';
import 'package:buzzer_beater/model/form/dto/form_list_dto.dart';

// List<FormItemDto> implementPictureView(BuildContext context) {
//   List<FormItemDto> items = [];

//   var dto = FormItemDto(
//     index: functionTeamImage,
//     height: 200,
//     width: 200,
//     callback: () {
//       Navigator.pop(context);
//     },
//   );
//   items.add(dto);
//   dto = FormItemDto(
//     index: functionTeamButton,
//     height: 100,
//     width: 100,
//     callback: () {
//       Navigator.pop(context);
//     },
//   );
//   items.add(dto);
//   return items;
// }

List<FormButtonDto> implementCommandButton(BuildContext context) {
  List<FormButtonDto> items = [];

  // Submitボタン
  items.add(FormButtonDto(
    index: functionSubmit,
    callback: () {
      Navigator.pop(context);
    },
  ));

  // Cancelボタン
  items.add(FormButtonDto(
    index: functionCancel,
    callback: () {
      Navigator.pop(context);
    },
  ));

  return items;
}
