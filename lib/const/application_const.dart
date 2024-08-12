import 'package:buzzer_beater/const/common_const.dart';

// =============================================================================
// 定数
// =============================================================================
// アプリケーションのページインデックス
const int indexTeam = 0;
const int indexMember = 1;

// アプリケーションのページネーム
const String contentsTeam = 'TEAM';
const String contentsMember = 'MEMBER';

// アプリケーションのフロートネーム
const String floaterTeam = 'TEAM_ADD';
const String floaterMember = 'MEMBER_ADD';

// =============================================================================
// アイテムリスト
// =============================================================================
const String applicationTeamName = 'teams_name';
const String applicationTeamShortName = 'teams_shortname';
const String applicationTeamRegion = 'teams_region';
final teamItemLists = [
  // 種別(indexType),キー(indexKeyword),識別子(indexName),返却値(indexReturn)
  [patternEditor, 'AT02', applicationTeamName, typeString],
  [patternEditor, 'AT03', applicationTeamShortName, typeString],
  [patternEditor, 'AT04', applicationTeamRegion, typeString],
  // [patternCommand, 'AT09', stringNull, typeNothing],
];
