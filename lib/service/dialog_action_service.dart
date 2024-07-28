import 'package:buzzer_beater/const/common_const.dart';
import 'package:buzzer_beater/view/dialog/application_dialog.dart';
import 'package:flutter/material.dart';

class DialogActionService {
  static notification(
    BuildContext context,
    String title,
    int initial,
  ) async {
    bool result;
    try {
      result = await applicationDialog(
        context: context,
        title: title,
        value: stringNull,
        initial: initial,
      );
    } catch (e) {
      result = false;
    }
    return result;
  }
}
