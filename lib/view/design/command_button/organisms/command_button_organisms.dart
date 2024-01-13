import 'package:flutter/material.dart';
import 'package:buzzer_beater/const/general_const.dart';
import 'package:buzzer_beater/model/form/dto/form_item_dto.dart';
import 'package:buzzer_beater/view/design/command_button/molecules/command_button_molecules.dart';

class CommandButtonOrganisms extends StatefulWidget {
  const CommandButtonOrganisms({super.key, required this.items});
  final List<FormItemDto> items;

  @override
  State createState() => _CommandButtonOrganismsState();
}

class _CommandButtonOrganismsState extends State<CommandButtonOrganisms> {
  @override
  void initState() {
    super.initState();

    for (var item in widget.items) {
      switch (item.index) {
        case functionSubmit:
          item.caption = const Text('決定');
          item.foreColor = Colors.white;
          item.backColor = Colors.green;
          item.icon = Icons.check_circle_outlined;
          break;
        case functionCancel:
          item.caption = const Text('戻る');
          item.foreColor = Colors.white;
          item.backColor = Colors.red;
          item.icon = Icons.cancel_outlined;
          break;
        case functionDelete:
          item.caption = const Text('削除');
          item.foreColor = Colors.white;
          item.backColor = Colors.orange;
          item.icon = Icons.arrow_circle_left_outlined;
          break;
        default:
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return CommandButtonMolecules(
      items: widget.items,
    );
  }
}
