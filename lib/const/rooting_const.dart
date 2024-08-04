import 'package:buzzer_beater/const/application_const.dart';
import 'package:buzzer_beater/const/configuration_const.dart';
import 'package:buzzer_beater/view/application/contents/member/member_body.dart';
import 'package:buzzer_beater/view/application/contents/team/team_body.dart';
import 'package:buzzer_beater/view/configuration/contents/general/general_body.dart';
import 'package:flutter/material.dart';

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
final List<Widget> contentsClasses = [
  // チーム
  const TeamBody(),
  // メンバー
  const MemberBody(),
];

final List<Icon> contentsIcons = [
  const Icon(Icons.home_filled),
  const Icon(Icons.groups),
];

final List<String> contentsTexts = [
  contentsTeam,
  contentsMember,
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

// =============================================================================
// アプリコンテンツレイヤに配置するフローティングボタン
// =============================================================================
final floaterClasses = [
  const TeamBody(),
  const MemberBody(),
];

final floaterIcon = [
  const Icon(Icons.add_home),
  const Icon(Icons.group_add),
  null,
];

final List<String> floaterText = [
  floaterTeam,
  floaterMember,
];
