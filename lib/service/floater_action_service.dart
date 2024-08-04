import 'package:buzzer_beater/const/application_const.dart';
import 'package:buzzer_beater/view/application/contents/team/team_form.dart';
import 'package:flutter/material.dart';

class FloaterActionService {
  static dispatch(
    BuildContext context,
    int index,
  ) {
    switch (index) {
      case indexTeam:
        MaterialPageRoute route = MaterialPageRoute(
          builder: (context) => const TeamForm(),
        );
        Navigator.push(
          context,
          route,
        );
        break;
      case indexMember:
        // xxx(context, bloc);
        break;
    }
  }
}
