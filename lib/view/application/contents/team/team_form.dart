import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:buzzer_beater/const/routing_const.dart';
import 'package:buzzer_beater/const/application_const.dart';
import 'package:buzzer_beater/model/page/dto/team_page_dto.dart';
import 'package:buzzer_beater/view/application/contents/team/team_form_implement.dart';
import 'package:buzzer_beater/view/design/command_button/command_button_organisms.dart';
import 'package:buzzer_beater/view/design/input_field/input_field_organisms.dart';
import 'package:buzzer_beater/view/design/picture_picker/picture_picker_organisms.dart';

class TeamForm extends StatefulWidget {
  const TeamForm({super.key, required this.edit});
  final bool edit;

  @override
  State createState() => _TeamFormState();
}

class _TeamFormState extends State<TeamForm> {
  TeamPageDto? pages;

  @override
  Widget build(BuildContext context) {
    pages = implementPageDto(context);
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
            PicturePickerOrganisms(picture: pages!.image!),
            const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            InputFieldOrganisms(item: pages!.name!),
            const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            InputFieldOrganisms(item: pages!.slogan!),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            CommandButtonOrganisms(items: pages!.command),
          ],
        ),
      ),
    );
  }
}
