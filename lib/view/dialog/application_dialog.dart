import 'package:buzzer_beater/model/form/dto/abstract/base_form_dto.dart';
import 'package:buzzer_beater/view/design/widget/organisms/confirm_dialog_organisms.dart';
import 'package:flutter/material.dart';

Future applicationDialog<T extends BaseFormDto>({
  required BuildContext context,
  required String title,
  required Object value,
  required int initial,
  T? items,
}) {
  return showDialog(
    context: context,
    useRootNavigator: true,
    builder: (BuildContext context) {
      return dialogBuilder(title, value, initial, items);
    },
  );
}

Widget dialogBuilder<T extends BaseFormDto>(
  String title,
  Object value,
  int initial,
  T? items,
) {
  Widget dialog;

  // 初期値の値からダイアログのタイプを決定
  // if (initial == typeNothing) {
  // 入力なし
  dialog = ConfirmDialogOrganisms(title: title.toString());
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
