import 'package:buzzer_beater/const/common_const.dart';

// =============================================================================
// 定数
// =============================================================================
const int indexTeam = 0;
const int indexMember = 1;
const int indexRoster = 2;
const int indexMatch = 3;
const int indexResult = 4;

const String contentsTeam = 'TEAM';
const String contentsMember = 'MEMBER';
const String contentsRoster = 'ROSTER';
const String contentsMatch = 'MATCH';
const String contentsResult = 'RESULT';

const String floaterTeam = 'TEAMADD';
const String floaterMember = 'ADD';
const String floaterRoster = 'ADD';
const String floaterMatch = 'PLAY';
const String floaterResult = '';

// =============================================================================
// チーム画面入力項目
// =============================================================================
const indexTeamName = 0;
final teamFormItem = [
  [patternField, 'TM01', 'text', 'TEAMNAME1'],
  [patternField, 'TM02', 'text', 'TEAMNAME2'],
];
