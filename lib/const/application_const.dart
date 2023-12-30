import 'package:flutter/material.dart';
import 'package:buzzer_beater/view/application/contents/match/match_body.dart';
import 'package:buzzer_beater/view/application/contents/member/member_body.dart';
import 'package:buzzer_beater/view/application/contents/result/result_body.dart';
import 'package:buzzer_beater/view/application/contents/roster/roster_body.dart';
import 'package:buzzer_beater/view/application/contents/team/team_body.dart';

final PageController contentsController = PageController(
  initialPage: 0,
  viewportFraction: 1.0,
);

final contentsClasses = [
  const TeamBody(),
  const MemberBody(),
  const RosterBody(),
  const MatchBody(),
  const ResultBody(),
];

final contentsIcons = [
  const Icon(Icons.home),
  const Icon(Icons.group),
  const Icon(Icons.format_list_numbered),
  const Icon(Icons.timer),
  const Icon(Icons.history),
];

final contentsTexts = ["チーム", "メンバー", "ロースター", "試合", "成績"];

const int floaterTeam = 0;
const int floaterMember = 1;
const int floaterRoster = 2;
const int floaterMatch = 3;
const int floaterResult = 4;

final floaterClasses = [
  const TeamBody(),
  const MemberBody(),
  const RosterBody(),
  const MatchBody(),
  null,
];

final floaterIcon = [
  const Icon(Icons.add),
  const Icon(Icons.person_add),
  const Icon(Icons.playlist_add),
  const Icon(Icons.post_add),
  null,
];

final floaterText = [
  "チーム追加",
  "メンバー追加",
  "出場選手登録",
  "試合開始",
  null,
];

final formIcon = [
  const Icon(Icons.add_circle),
  const Icon(Icons.cancel),
  const Icon(Icons.remove_circle),
  const Icon(Icons.check_circle),
  const Icon(Icons.play_circle_fill),
];

final formText = [
  const Text('追加'),
  const Text('取消'),
  const Text('削除'),
  const Text('更新'),
  const Text('開始'),
];
