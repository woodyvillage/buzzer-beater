import 'dart:ffi';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:buzzer_beater/const/common_const.dart';
import 'package:buzzer_beater/const/configuration_const.dart';
import 'package:buzzer_beater/model/data/application_database.dart';
import 'package:buzzer_beater/service/dialog_service.dart';
import 'package:buzzer_beater/utility/authentication_utility.dart';
import 'package:buzzer_beater/view/authentication_root.dart';

VoidCallback makeCallback(BuildContext context, int index) {
  if (kDebugMode) {
    print('makeCallback[$index]');
  }

  // settingTypeでの分別
  VoidCallback callback;
  switch (settingsLists[index][indexType]) {
    case patternButton:
      callback = makeButtonCallback(context, index);
      break;
    default:
      callback = Void as VoidCallback;
      break;
  }
  return callback;
}

VoidCallback makeButtonCallback(BuildContext context, int index) {
  if (kDebugMode) {
    print('makeButtonCallback[$index]');
  }

  // settingIndex別のコールバック定義
  switch (settingsLists[index][indexKey]) {
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
