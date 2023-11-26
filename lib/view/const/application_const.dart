import 'package:flutter/material.dart';
import 'package:buzzer_beater/view/body/contents/match/body.dart';
import 'package:buzzer_beater/view/body/contents/member/body.dart';
import 'package:buzzer_beater/view/body/contents/result/body.dart';
import 'package:buzzer_beater/view/body/contents/roster/body.dart';
import 'package:buzzer_beater/view/body/contents/team/body.dart';

final controller = PageController(
  initialPage: routeTeam,
  viewportFraction: 1.0,
);

int selectedRoute = 0;
const int routeTeam = 0;
const int routeMember = 1;
const int routeRoster = 2;
const int routeMatch = 3;
const int routeResult = 4;

List<Map<String, dynamic>> routeset = [
  {"name": "Team", "icon": const Icon(Icons.home), "body": TeamBody()},
  {"name": "Member", "icon": const Icon(Icons.group), "body": MemberBody()},
  {
    "name": "Roster",
    "icon": const Icon(Icons.format_list_numbered),
    "body": RosterBody()
  },
  {"name": "Match", "icon": const Icon(Icons.timer), "body": MatchBody()},
  {"name": "Result", "icon": const Icon(Icons.history), "body": ResultBody()},
];

final routesetFloatIcon = [
  const Icon(Icons.add),
  const Icon(Icons.person_add),
  const Icon(Icons.playlist_add),
  const Icon(Icons.post_add),
  null,
  // null,
];

final routesetFloatText = [
  const Text('チーム追加'),
  const Text('メンバー追加'),
  const Text('メンバー登録'),
  const Text('試合開始'),
  null,
  // null,
];
