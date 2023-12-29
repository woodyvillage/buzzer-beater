import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:buzzer_beater/model/data/application_database.dart';
import 'package:buzzer_beater/model/data/dao/initial_dao.dart';
import 'package:buzzer_beater/utility/navigator_position.dart';
import 'package:buzzer_beater/view/application_root.dart';
import 'package:buzzer_beater/view/application_sign.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await ApplicationDatabase.database;
  InitialDao initial = InitialDao();

  // イニシャルテーブルの状況で遷移先を切り替え
  Widget branch = await initial.isAuthorized()
      ? const ApplicationRoot()
      : const ApplicationSign();

  runApp(ChangeNotifierProvider(
    create: (_) => NavigatorPosition(),
    child: branch,
  ));
}
