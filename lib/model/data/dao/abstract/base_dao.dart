import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:buzzer_beater/const/database_const.dart';
import 'package:buzzer_beater/model/data/application_database.dart';
import 'package:buzzer_beater/model/data/dto/initial_dto.dart';

abstract class BaseDao {
  Future<int?> count(dynamic dto) async {
    Database database = await ApplicationDatabase.database;
    int? result = Sqflite.firstIntValue(await database.query(
      scope(dto),
      columns: ['count(*)'],
    ));
    if (kDebugMode) {
      print('${scope(dto)} count [$result]');
    }
    return result;
  }

  Future<int> insert(dynamic dto) async {
    Database database = await ApplicationDatabase.database;
    if (kDebugMode) {
      print('${scope(dto)} insert[${dto.toMap()}]');
    }
    return await database.insert(
      scope(dto),
      dto.toMap(),
    );
  }

  Future<int> delete(dynamic dto) async {
    Database database = await ApplicationDatabase.database;
    if (kDebugMode) {
      print(
          '${scope(dto)} delete[${DatabaseConst.columnProvider} = ${dto.provider}]');
    }
    return await database.delete(
      scope(dto),
    );
  }

  String scope(dynamic dto) {
    if (dto is InitialDto) {
      return DatabaseConst.tableInitial;
    } else {
      return "";
    }
  }
}
