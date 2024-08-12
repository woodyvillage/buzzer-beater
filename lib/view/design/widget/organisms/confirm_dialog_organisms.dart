import 'package:buzzer_beater/model/form/dto/form_item_dto.dart';
import 'package:buzzer_beater/view/design/widget/molecules/confirm_dialog_molecules.dart';
import 'package:flutter/material.dart';

class ConfirmDialogOrganisms extends StatefulWidget {
  const ConfirmDialogOrganisms({
    super.key,
    required this.item,
  });
  final FormItemDto item;

  @override
  State createState() => _ConfirmDialogOrganismsState();
}

class _ConfirmDialogOrganismsState extends State<ConfirmDialogOrganisms> {
  @override
  Widget build(BuildContext context) {
    return ConfirmDialogMolecules(item: widget.item);
  }
}
