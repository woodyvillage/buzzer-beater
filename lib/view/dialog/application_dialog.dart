import 'package:buzzer_beater/model/form/dto/form_item_dto.dart';
import 'package:buzzer_beater/view/design/widget/organisms/confirm_dialog_organisms.dart';
import 'package:flutter/material.dart';

Future applicationDialog({
  required BuildContext context,
  required FormItemDto item,
}) {
  return showDialog(
    context: context,
    useRootNavigator: true,
    builder: (BuildContext context) {
      return dialogBuilder(item);
    },
  );
}

Widget dialogBuilder(
  FormItemDto item,
) {
  Widget dialog;

  // 初期値の値からダイアログのタイプを決定
  // if (initial == typeNothing) {
  // 入力なし
  dialog = ConfirmDialogOrganisms(item: item);
  // } else {
  // シングル入力
  // dialog = SingleInputDialogOrganisms(
  //   title: title,
  //   value: value.toString(),
  //   type: initial,
  // );
  // }
  return dialog;
}
