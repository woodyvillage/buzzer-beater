import 'package:flutter/material.dart';
import 'package:buzzer_beater/view/application/contents/match/match_form.dart';
import 'package:buzzer_beater/view/application/contents/member/member_form.dart';
import 'package:buzzer_beater/view/application/contents/roster/roster_form.dart';
import 'package:buzzer_beater/view/application/contents/team/team_form.dart';
import 'package:buzzer_beater/const/application_const.dart';

class FloaterAction {
  static dispatch(BuildContext context, int index) {
    MaterialPageRoute route = MaterialPageRoute(
      builder: (context) => const TeamForm(edit: false),
    );

    switch (index) {
      case floaterMember:
        route = MaterialPageRoute(
          builder: (context) => const MemberForm(edit: false),
        );
        break;
      case floaterRoster:
        route = MaterialPageRoute(
          builder: (context) => const RosterForm(edit: false),
        );
        break;
      case floaterMatch:
        route = MaterialPageRoute(
          builder: (context) => const MatchForm(edit: false),
        );
        break;
    }
    Navigator.push(
      context,
      route,
    );
  }
}
