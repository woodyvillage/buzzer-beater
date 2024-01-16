import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:buzzer_beater/const/common_const.dart';
import 'package:buzzer_beater/const/configuration_const.dart';
import 'package:buzzer_beater/model/form/dto/form_list_dto.dart';
import 'package:buzzer_beater/utility/callback_utility.dart';
import 'package:buzzer_beater/view/design/widget/atoms/button/listtile_button_atoms.dart';

class ConfigurationItemOrganisms extends StatefulWidget {
  const ConfigurationItemOrganisms({super.key, required this.index});
  final int index;

  @override
  State createState() => _ConfigurationItemOrganismsState();
}

class _ConfigurationItemOrganismsState
    extends State<ConfigurationItemOrganisms> {
  @override
  void initState() {
    super.initState();
  }

  FormListDto buildDto() {
    return FormListDto(
      index: settingsLists[widget.index][indexType],
      callback: makeCallback(context, widget.index, settingsLists),
      caption: Text(AppLocalizations.of(context)!
          .configure_DESC(settingsLists[widget.index][indexKey])),
      command: Text(AppLocalizations.of(context)!
          .configure_DISP(settingsLists[widget.index][indexKey])),
      width: 120,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListtileButtonAtoms(
      item: buildDto(),
    );
  }
}
