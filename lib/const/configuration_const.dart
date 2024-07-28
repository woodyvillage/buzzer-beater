import 'package:buzzer_beater/const/common_const.dart';

// =============================================================================
// 定数
// =============================================================================
// コンフィグレーションのページインデックス
const int indexGeneral = 0;

// コンフィグレーションのページネーム
const String settingsGeneral = 'GENERAL';

const String settingsInitialize = 'db_initialize';

// =============================================================================
// コンフィグアクションリスト
// =============================================================================
final settingsLists = [
  // 種別(indexType),キー(indexKey),識別子(indexName),初期値(indexInitial),固定値
  [patternButton, 'C01', settingsInitialize, typeNothing, stringNull],
];
