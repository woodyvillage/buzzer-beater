import 'package:flutter/material.dart';
import 'package:buzzer_beater/view/body/contents/widget/command_widget.dart';
import 'package:buzzer_beater/view/const/application_const.dart';

class TeamForm extends StatefulWidget {
  const TeamForm({super.key, required this.edit});
  final bool edit;

  @override
  State createState() => _TeamFormState();
}

class _TeamFormState extends State<TeamForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(floaterText[floaterTeam]!),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          children: <Widget>[
            const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
            // teamImageField(),
            // teamColorField(_form[1]),
            // teamColorField(_form[2]),
            // teamOwnerField(_form[3]),
            // teamSupportField(_form[4]),
            // Padding(padding: const EdgeInsets.symmetric(vertical: 10)),
            CommandWidget.build(context,widget.edit),
          ],
        ),
      ),
    );
  }
}
