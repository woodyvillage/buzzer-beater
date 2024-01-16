import 'dart:ffi';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:buzzer_beater/const/common_const.dart';
import 'package:buzzer_beater/model/data/application_database.dart';
import 'package:buzzer_beater/service/dialog_service.dart';
import 'package:buzzer_beater/utility/authentication_utility.dart';
import 'package:buzzer_beater/view/authentication_root.dart';

VoidCallback makeCallback(
    BuildContext context, int index, List<List<String>> list) {
  if (kDebugMode) {
    print('makeCallback[$index]');
  }

  VoidCallback callback;
  switch (list[index][indexType]) {
    case patternButton:
      callback = makeButtonCallback(context, index, list[index][indexKey]);
      break;
    default:
      callback = Void as VoidCallback;
      break;
  }
  return callback;
}

VoidCallback makeButtonCallback(BuildContext context, int index, String key) {
  if (kDebugMode) {
    print('makeButtonCallback[$key]');
  }

  switch (key) {
    case 'A01':
      return () async {
        bool isAllowed = await DialogService.showMessageDialog(
            context: context, index: index);
        if (isAllowed) {
          // イニシャルテーブルの認証データを削除
          resetUserAuthentication();
          // 画面遷移
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const AuthenticationRoot();
          }));
        }
      };
    case 'A02':
      return () async {
        bool isAllowed = await DialogService.showMessageDialog(
            context: context, index: index);
        if (isAllowed) {
          // ローカルDBを削除
          ApplicationDatabase.finalize();
          // 画面遷移
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const AuthenticationRoot();
          }));
        }
      };
    default:
      return Void as VoidCallback;
  }
}
