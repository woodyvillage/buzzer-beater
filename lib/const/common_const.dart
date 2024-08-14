// =============================================================================
// 共通定数
// =============================================================================

// アクションリストのインデックス
const int indexType = 0;
const int indexKeyword = 1;
const int indexName = 2;
const int indexReturn = 3;
const int indexForecolor = 4;
const int indexBackcolor = 5;
const int indexIcon = 6;

// 返却値
const int typeNothing = 0;
const int typeNumeric = 1;
const int typeString = 2;
const int typeMultiple = 9;

// 固定文字列
const String stringNull = '';
const String stringGreen = 'green';
const String stringWhite = 'white';
const String stringOrange = 'orange';

// 固定数値
const int intNull = 0;

// =============================================================================
// コントロールの識別子
// =============================================================================
const String patternButton = 'BTN';
const String patternEditor = 'EDT';
const String patternPicker = 'PCK';
const String patternCommand = 'CMD';

// =============================================================================
// アイテムリスト
// =============================================================================
const String iconCancel = 'cancel_outlined';
const String iconSubmit = 'check_circle_outlined';

// =============================================================================
// コマンドボタン
// =============================================================================
const functionSubmit = 'submit';
const functionCancel = 'cancel';
const buttonKind = 'command_yes_no';

final commandYesNoLists = [
  // 種別(indexType),キー(indexKeyword),識別子(indexName),返却値(indexReturn)
  [
    patternButton,
    'CMD01',
    functionCancel,
    typeNothing,
    stringWhite,
    stringOrange,
    iconCancel,
  ],
  [
    patternButton,
    'CMD02',
    functionSubmit,
    typeNothing,
    stringWhite,
    stringGreen,
    iconSubmit,
  ],
];
