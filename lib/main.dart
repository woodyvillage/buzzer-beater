import 'package:buzzer_beater/database/application_database.dart';
import 'package:buzzer_beater/model/data/dao/initial_dao.dart';
import 'package:buzzer_beater/service/navigator_position_service.dart';
import 'package:buzzer_beater/view/application_root.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ローカルDB内のアカウントテーブルをチェック
  await ApplicationDatabase.database;
  InitialDao initial = InitialDao();
  if (!await initial.isAuthorized()) {
    initial.initialize();
  }

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => NavigatorPositionService(),
      ),
    ],
    child: const ApplicationRoot(),
  ));
}
