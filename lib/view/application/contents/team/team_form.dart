import 'package:buzzer_beater/const/application_const.dart';
import 'package:buzzer_beater/view/design/widget/organisms/team_form_organisms.dart';
import 'package:buzzer_beater/view/header/application_header.dart';
import 'package:flutter/material.dart';

class TeamForm extends StatefulWidget {
  const TeamForm({super.key});

  @override
  State createState() => _TeamFormState();
}

class _TeamFormState extends State<TeamForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // ヘッダー
      appBar: const ApplicationHeader(isView: true),
      // コンテンツ
      body: SafeArea(
        child: ListView.builder(
          itemCount: teamItemLists.length,
          itemBuilder: (context, index) {
            return TeamFormOrganisms(
              item: teamItemLists[index],
            );
          },
        ),
      ),
    );
  }
}
