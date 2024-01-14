import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:buzzer_beater/const/application_const.dart';
import 'package:buzzer_beater/const/common_const.dart';
import 'package:buzzer_beater/const/widget_const.dart';
import 'package:buzzer_beater/model/form/dto/form_button_dto.dart';
import 'package:buzzer_beater/model/form/dto/form_field_dto.dart';

FormFieldDto implementInputField(BuildContext context, int index) {
  return FormFieldDto(
    index: teamFormItem[index][indexType],
    caption: implementCaption(context, index, 'caption'),
    hint: implementCaption(context, index, 'hint'),
    keytype: implementKeytype(teamFormItem[index][indexKeyboard]),
  );
}

String implementCaption(BuildContext context, int index, String subitem) {
  String caption;
  switch (index) {
    case indexTeamName:
      caption = AppLocalizations.of(context)!.team_name(subitem);
      break;
    default:
      caption = "";
  }
  return caption;
}

TextInputType implementKeytype(String type) {
  switch (type) {
    case 'text':
      return TextInputType.text;
    default:
      return TextInputType.text;
  }
}

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
