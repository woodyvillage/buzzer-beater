import 'package:buzzer_beater/const/common_const.dart';
import 'package:buzzer_beater/view/design/widget/organisms/confirm_dialog_organisms.dart';
import 'package:flutter/material.dart';

Future applicationDialog({
  required BuildContext context,
  required String title,
  required String value,
  required int initial,
  List<List<Object>>? items,
}) {
  return showDialog(
    context: context,
    useRootNavigator: true,
    builder: (BuildContext context) {
      return dialogBuilder(title, value, items, initial);
    },
  );
}

Widget dialogBuilder(
  String title,
  String value,
  List<List<Object>>? items,
  int initial,
) {
  Widget dialog;

  // 初期値の値からダイアログのタイプを決定
  if (initial == typeNothing) {
    // 入力なし
    dialog = ConfirmDialogOrganisms(title: title.toString());
  } else {
    // シングル入力
    dialog = ConfirmDialogOrganisms(title: title.toString());
  }
  return dialog;
}
