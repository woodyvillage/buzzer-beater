import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:buzzer_beater/const/routing_const.dart';
import 'package:buzzer_beater/const/application_const.dart';
import 'package:buzzer_beater/model/form/dto/form_button_dto.dart';
import 'package:buzzer_beater/view/application/contents/team/team_form_implement.dart';
import 'package:buzzer_beater/view/design/command_button/command_button_organisms.dart';
import 'package:buzzer_beater/view/design/input_field/input_field_organisms.dart';

class TeamForm extends StatefulWidget {
  const TeamForm({super.key, required this.edit});
  final bool edit;

  @override
  State createState() => _TeamFormState();
}

class _TeamFormState extends State<TeamForm> {
  List<FormButtonDto> commands = [];

  @override
  void initState() {
    super.initState();

    // CommandButtonオブジェクトの埋め込み
    commands = implementCommandButton(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title:
            Text(AppLocalizations.of(context)!.floater(floaterText[indexTeam])),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          children: <Widget>[
            InputFieldOrganisms(
                item: implementInputField(context, indexTeamName)),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            CommandButtonOrganisms(items: commands),
          ],
        ),
      ),
    );
  }
}
