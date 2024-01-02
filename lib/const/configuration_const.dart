import 'package:flutter/material.dart';
import 'package:buzzer_beater/view/configuration/contents/general/general_body.dart';

final PageController settingsController = PageController(
  initialPage: 0,
  viewportFraction: 1.0,
);

final settingsClasses = [
  const GeneralBody(),
];

final settingsIcons = [
  const Icon(Icons.home),
];

final settingsTexts = ["全般"];

const patternButton = 'BTN';

const settingType = 0;
const settingIndex = 1;
const settingCaption = 2;
const settingAction = 3;
const settingConfirm = 4;

final settingsLists = [
  [patternButton, '901', 'ログアウト', 'ログアウト', 'ログアウトします'],
  [patternButton, '902', 'アプリを初期状態に戻す', '初期化', 'すべてのユーザーデータを消去して初期状態にします'],
];
