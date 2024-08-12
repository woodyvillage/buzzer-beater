import 'package:buzzer_beater/const/common_const.dart';
import 'package:buzzer_beater/model/form/dao/form_item_dao.dart';
import 'package:buzzer_beater/model/form/dto/form_button_dto.dart';
import 'package:buzzer_beater/model/form/dto/form_item_dto.dart';
import 'package:buzzer_beater/utility/contents_utility.dart';
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
    FormItemDao dao = FormItemDao();
    List<FormButtonDto> btn = buildCommandButton();
    FormItemDto dto = dao.createDto(context, widget.item, true, btn);
    switch (dto.type) {
      case patternEditor:
        return TextInputMolecules(item: dto);
      case patternPicker:
        return TeamPictureMolecules(item: dto);
      case patternCommand:
        return CommandButtonMolecules(item: dto);
      default:
        return const Row();
    }
  }

  List<FormButtonDto> buildCommandButton() {
    List<FormButtonDto> dto = [];
    dto.add(FormButtonDto(
      type: patternButton,
      keyword: functionCancel,
      callback: () {},
      caption: getText(context, functionCancel),
      foreColor: Colors.white,
      backColor: Colors.orange,
      icon: Icons.cancel_outlined,
    ));
    dto.add(FormButtonDto(
      type: patternButton,
      keyword: functionSubmit,
      callback: () {},
      caption: getText(context, functionSubmit),
      foreColor: Colors.white,
      backColor: Colors.green,
      icon: Icons.check_circle_outlined,
    ));
    return dto;
  }
}
