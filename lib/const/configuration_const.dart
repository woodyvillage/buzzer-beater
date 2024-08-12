import 'package:buzzer_beater/const/common_const.dart';

// =============================================================================
// 定数
// =============================================================================
// コンフィグレーションのページインデックス
const int indexGeneral = 0;

// コンフィグレーションのページネーム
const String settingsGeneral = 'GENERAL';

// =============================================================================
// アクションリスト
// =============================================================================
const String settingsInitialize = 'db_initialize';
final settingsLists = [
  // 種別(indexType),キー(indexKeyword),識別子(indexName),返却値(indexReturn)
  [patternButton, 'C01', settingsInitialize, typeNothing],
];
