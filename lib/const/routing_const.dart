import 'package:flutter/material.dart';
import 'package:buzzer_beater/const/application_const.dart';
import 'package:buzzer_beater/const/configuration_const.dart';
import 'package:buzzer_beater/view/application/contents/match/match_body.dart';
import 'package:buzzer_beater/view/application/contents/member/member_body.dart';
import 'package:buzzer_beater/view/application/contents/result/result_body.dart';
import 'package:buzzer_beater/view/application/contents/roster/roster_body.dart';
import 'package:buzzer_beater/view/application/contents/team/team_body.dart';
import 'package:buzzer_beater/view/configuration/contents/general/general_body.dart';

// =============================================================================
// ページコントローラー
// =============================================================================
final PageController contentsController = PageController(
  initialPage: 0,
  viewportFraction: 1.0,
);
final PageController settingsController = PageController(
  initialPage: 0,
  viewportFraction: 1.0,
);

// =============================================================================
// アプリコンテンツレイヤに配置する可変ページャー
// =============================================================================
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

final List<String> contentsTexts = [
  contentsTeam,
  contentsMember,
  contentsRoster,
  contentsMatch,
  contentsResult,
];

// =============================================================================
// アプリコンテンツレイヤに配置するフローティングボタン
// =============================================================================
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

final List<String> floaterText = [
  floaterTeam,
  floaterMember,
  floaterRoster,
  floaterMatch,
  floaterResult,
];

// =============================================================================
// コンフィグコンテンツレイヤに配置する可変ページャー
// =============================================================================
final settingsClasses = [
  const GeneralBody(),
];

final settingsIcons = [
  const Icon(Icons.home),
];

final List<String> settingsText = [
  settingsGeneral,
];
