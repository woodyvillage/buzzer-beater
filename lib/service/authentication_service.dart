import 'package:flutter/foundation.dart';
import 'package:buzzer_beater/model/data/dao/initial_dao.dart';
import 'package:buzzer_beater/model/data/dto/initial_dto.dart';

Future setUserAuthentication(String provider, String registed) async {
  try {
    if (kDebugMode) {
      print('setUserAuthentication[$provider][$registed]');
    }
    // イニシャルテーブル
    InitialDao dao = InitialDao();
    InitialDto dto = InitialDto(
      provider: provider,
      registed: registed,
    );
    await dao.insert(dto);
  } catch (e) {
    if (kDebugMode) {
      print(e.toString());
    }
  }
}
