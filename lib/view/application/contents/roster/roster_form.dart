import 'package:flutter/material.dart';
import 'package:buzzer_beater/const/application_const.dart';
import 'package:buzzer_beater/const/routing_const.dart';
import 'package:buzzer_beater/model/form/dto/form_button_dto.dart';
import 'package:buzzer_beater/view/application/contents/team/team_form_implement.dart';
import 'package:buzzer_beater/view/design/command_button/command_button_organisms.dart';

class RosterForm extends StatefulWidget {
  const RosterForm({super.key, required this.edit});
  final bool edit;

  @override
  State createState() => _RosterFormState();
}

class _RosterFormState extends State<RosterForm> {
  List<FormButtonDto> items = [];

  @override
  void initState() {
    super.initState();

    // CommandButtonオブジェクトの埋め込み
    items = implementCommandButton(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(floaterText[indexRoster]),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          children: <Widget>[
            const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
            CommandButtonOrganisms(items: items),
          ],
        ),
      ),
    );
  }
}
