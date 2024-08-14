import 'package:buzzer_beater/const/common_const.dart';
import 'package:buzzer_beater/model/form/dao/form_button_dao.dart';
import 'package:buzzer_beater/model/form/dao/form_item_dao.dart';
import 'package:buzzer_beater/model/form/dto/form_button_dto.dart';
import 'package:buzzer_beater/model/form/dto/form_item_dto.dart';
import 'package:buzzer_beater/view/design/widget/molecules/command_button_molecules.dart';
import 'package:buzzer_beater/view/design/widget/molecules/team_picture_molecules.dart';
import 'package:buzzer_beater/view/design/widget/molecules/text_input_molecules.dart';
import 'package:flutter/material.dart';

class TeamFormOrganisms extends StatefulWidget {
  const TeamFormOrganisms({
    super.key,
    required this.item,
  });
  final List<Object> item;

  @override
  State createState() => _TeamFormOrganismsState();
}

class _TeamFormOrganismsState extends State<TeamFormOrganisms> {
  @override
  Widget build(BuildContext context) {
    FormItemDao itemDao = FormItemDao();
    FormItemDto itemDto = itemDao.createDto(context, widget.item, true);
    switch (itemDto.type) {
      case patternEditor:
        return TextInputMolecules(item: itemDto);
      case patternPicker:
        return TeamPictureMolecules(item: itemDto);
      case patternCommand:
        FormButtonDao buttonDao = FormButtonDao();
        List<FormButtonDto> buttonDto =
            buttonDao.createList(context, widget.item);
        return CommandButtonMolecules(item: buttonDto);
      default:
        return const Row();
    }
  }
}
