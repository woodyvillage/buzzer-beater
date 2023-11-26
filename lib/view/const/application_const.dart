import 'package:flutter/material.dart';
import 'package:buzzer_beater/view/body/contents/match/body.dart';
import 'package:buzzer_beater/view/body/contents/member/body.dart';
import 'package:buzzer_beater/view/body/contents/result/body.dart';
import 'package:buzzer_beater/view/body/contents/roster/body.dart';
import 'package:buzzer_beater/view/body/contents/team/body.dart';
import 'package:buzzer_beater/view/body/settings/application/body.dart';

final PageController contentsController = PageController(
  initialPage: 0,
  viewportFraction: 1.0,
);

final contentsClasses = [
  TeamBody(),
  MemberBody(),
  RosterBody(),
  MatchBody(),
  ResultBody(),
];

final contentsIcons = [
  const Icon(Icons.home),
  const Icon(Icons.group),
  const Icon(Icons.format_list_numbered),
  const Icon(Icons.timer),
  const Icon(Icons.history),
];

final contentsTexts = List<String>.filled(5, '');

final PageController settingsController = PageController(
  initialPage: 0,
  viewportFraction: 1.0,
);

final settingsClasses = [
  ApplicationBody(),
];

final settingsIcons = [
  const Icon(Icons.home),
];

final settingsTexts = List<String>.filled(1, '');
