import 'dart:ffi';
import 'package:buzzer_beater/const/common_const.dart';
import 'package:buzzer_beater/database/application_database.dart';
import 'package:buzzer_beater/model/data/dao/initial_dao.dart';
import 'package:buzzer_beater/service/dialog_action_service.dart';
import 'package:flutter/material.dart';

// =============================================================================
// [共通] 戻るコールバック
// =============================================================================
VoidCallback makeReturnCallback(BuildContext context) {
  return () => Navigator.pop(context, -1);
}

// =============================================================================
// [共通] 確定コールバック
// =============================================================================
VoidCallback makeAcceptCallback(BuildContext context) {
  return () => Navigator.pop(context, true);
}

// =============================================================================
// [Conguration] indexType別のコールバック
// =============================================================================
VoidCallback makeCallback(
  BuildContext context,
  List<Object> list,
) {
  VoidCallback callback;
  switch (list[indexType]) {
    case patternButton:
      callback = makeButtonCallback(context, list);
      break;
    default:
      callback = () {};
      break;
  }
  return callback;
}

// =============================================================================
// [Conguration] indexKeyword別のコールバック
// =============================================================================
VoidCallback makeButtonCallback(
  BuildContext context,
  List<Object> list,
) {
  switch (list[indexKeyword]) {
    // [Configuration] Initialize
    case 'C01':
      return () async {
        bool isAllowed = await DialogActionService.notification(
          context,
          list,
        );
        print('[${list[indexKeyword]}] return value [$isAllowed]');

        if (isAllowed) {
          // ローカルDBを削除して初期化
          await ApplicationDatabase.finalize();
          await ApplicationDatabase.database;
          InitialDao initial = InitialDao();
          if (!await initial.isAuthorized()) {
            initial.initialize();
          }

          // 画面遷移
          if (context.mounted) {
            Navigator.pop(context);
          }
        }
      };
    // [Application] Command.cancel
    case 'CMD01':
      return makeReturnCallback(context);
    // [Application] Command.cancel
    case 'CMD02':
      return makeReturnCallback(context);
    default:
      return Void as VoidCallback;
  }
}
