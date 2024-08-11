import 'dart:io';

import 'package:buzzer_beater/const/database_const.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class ApplicationDatabase {
  // シングルトン
  ApplicationDatabase._privateConstructor();
  static final ApplicationDatabase instance =
      ApplicationDatabase._privateConstructor();

  // データベース
  static Database? _database;

  static Future<Database> get database async {
    _database ??= await initialize();
    return _database!;
  }

  static Future<Database> initialize() async {
    Directory directory = await getApplicationSupportDirectory();
    if (kDebugMode) {
      print('initialize database[${databaseVersion}]');
    }
    return await openDatabase(
      join(
        directory.path,
        databaseName,
      ),
      version: databaseVersion,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
  }

  static Future<void> finalize() async {
    Directory directory = await getApplicationSupportDirectory();
    if (kDebugMode) {
      print('delete database');
    }
    _database = null;
    return await deleteDatabase(
      join(
        directory.path,
        databaseName,
      ),
    );
  }

  static Future _onCreate(Database db, int version) async {
    if (kDebugMode) {
      print('create version $version');
    }
    await _execute(db, 1, version);
  }

  static Future _onUpgrade(Database db, int previous, int current) async {
    if (kDebugMode) {
      print('update version $previous to $current');
    }
    await _execute(db, previous + 1, current);
  }

  static _execute(Database db, int previous, int current) async {
    for (var i = previous; i <= current; i++) {
      var queries = ddlScripts[i.toString()];
      for (String query in queries!) {
        if (kDebugMode) {
          print(query);
        }
        await db.execute(query);
      }
    }
  }
}
