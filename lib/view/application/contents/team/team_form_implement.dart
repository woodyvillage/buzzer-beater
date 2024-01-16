import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:buzzer_beater/const/application_const.dart';
import 'package:buzzer_beater/const/common_const.dart';
import 'package:buzzer_beater/const/widget_const.dart';
import 'package:buzzer_beater/model/form/dto/form_button_dto.dart';
import 'package:buzzer_beater/model/form/dto/form_field_dto.dart';
import 'package:buzzer_beater/model/form/dto/form_picture_dto.dart';
import 'package:buzzer_beater/model/page/dto/team_page_dto.dart';

TeamPageDto implementPageDto(BuildContext context) {
  TeamPageDto page = TeamPageDto(index: contentsTeam);
  // チームイメージ
  page.image = implementPicture(context, indexTeamImage);
  // チーム名
  page.name = implementInputField(context, indexTeamName);
  // コマンドボタン
  page.command = implementCommandButton(context);
  return page;
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

FormFieldDto implementInputField(BuildContext context, int index) {
  return FormFieldDto(
    index: teamFormItem[index][indexType],
    caption: getCaption(context, index, 'caption'),
    hint: getCaption(context, index, 'hint'),
    keytype: getKeytype(teamFormItem[index][indexKeyboard]),
  );
}

String getCaption(BuildContext context, int index, String subitem) {
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

TextInputType getKeytype(String type) {
  switch (type) {
    case 'text':
      return TextInputType.text;
    default:
      return TextInputType.text;
  }
}

FormPictureDto implementPicture(BuildContext context, int index) {
  return FormPictureDto(
    index: teamFormItem[index][indexType],
    height: 200,
    width: MediaQuery.of(context).size.width - 20,
  );
}
