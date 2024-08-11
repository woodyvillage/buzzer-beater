// =============================================================================
// データベース定数
// =============================================================================
const databaseName = 'BuzzerBeater.db';
const databaseVersion = 2;

const tableInitial = 'initial';
const tableTeam = 'teams';

const columnNo = 'no';
const columnUuid = 'uuid';
const columnName = 'teams_name';
const columnShortName = 'teams_shortname';
const columnArea = 'teams_area';
const columnCoach = 'teams_coach';
const columnMember = 'teams_member';

final ddlScripts = {
  '0': ["SELECT $columnNo FROM $tableInitial;"],
  '1': ["CREATE TABLE $tableInitial ($columnNo INTEGER NOT NULL);"],
  '2': [
    "CREATE TABLE $tableTeam ($columnNo INTEGER PRIMARY KEY AUTOINCREMENT, $columnName TEXT NOT NULL, $columnShortName TEXT NOT NULL, $columnArea TEXT NOT NULL, $columnCoach INTEGER NOT NULL, $columnMember INTEGER NOT NULL);"
  ],
};
