class DatabaseConst {
  // データベース定義
  static const databaseName = 'BuzzerBeater.db';
  static const databaseVersion = 1;

  // イニシャルテーブル
  static const tableInitial = "initial";
  static const columnProvider = "provider";
  static const columnRegisted = "registed";

  static final ddlScripts = {
    '0': ['SELECT $columnProvider FROM $tableInitial;'],
    '1': [
      'CREATE TABLE $tableInitial ($columnProvider TEXT PRIMARY KEY, $columnRegisted TEXT NOT NULL);'
    ],
  };
}
