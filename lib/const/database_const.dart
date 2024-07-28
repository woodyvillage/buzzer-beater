class DatabaseConst {
  // データベース定義
  static const databaseName = 'BuzzerBeater.db';
  static const databaseVersion = 2;

  // テーブル共通
  static const columnNo = 'no';
  static const columnUuid = 'uuid';

  // イニシャルテーブル
  static const tableInitial = 'initial';

  // チームテーブル
  static const tableTeam = 'teams';
  static const columnName = 'name';
  static const columnShortName = 'shortname';
  static const columnArea = 'area';
  static const columnCoach = 'coach';
  static const columnMember = 'member';

  static final ddlScripts = {
    '0': ["SELECT $columnNo FROM $tableInitial;"],
    '1': ["CREATE TABLE $tableInitial ($columnNo INTEGER NOT NULL);"],
    '2': [
      "CREATE TABLE $tableTeam ($columnNo INTEGER PRIMARY KEY AUTOINCREMENT, $columnName TEXT NOT NULL, $columnShortName TEXT NOT NULL, $columnArea TEXT NOT NULL, $columnCoach INTEGER NOT NULL, $columnMember INTEGER NOT NULL);"
    ],
  };
}
