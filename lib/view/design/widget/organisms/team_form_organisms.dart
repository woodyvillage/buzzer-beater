import 'package:buzzer_beater/const/common_const.dart';
import 'package:buzzer_beater/model/form/dao/form_item_dao.dart';
import 'package:buzzer_beater/model/form/dto/form_item_dto.dart';
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
    FormItemDto dto = dao.createDto(context, widget.item, true);
    switch (dto.type) {
      case patternEditor:
        return TextInputMolecules(item: dto);
      default:
        return const Row();
    }
  }
}
