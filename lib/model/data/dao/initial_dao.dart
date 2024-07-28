import 'package:buzzer_beater/const/database_const.dart';
import 'package:buzzer_beater/model/data/dao/abstract/base_dao.dart';
import 'package:buzzer_beater/model/data/dto/initial_dto.dart';
import 'package:flutter/foundation.dart';

class InitialDao extends BaseDao<InitialDto> {
  Future<bool> isAuthorized() async {
    int? result = await count(this);
    if (kDebugMode) {
      print('isAuthorized => ${result == 0 ? false : true}');
    }
    return result == null
        ? false
        : result == 0
            ? false
            : true;
  }

  Future<int> initialize() async {
    InitialDto dto = InitialDto(no: 0);
    return await insert(this, dto);
  }

  @override
  String scope() => DatabaseConst.tableInitial;

  @override
  List<InitialDto> parseResult(List<Map<String, dynamic>> result) {
    return result.isNotEmpty
        ? result.map((item) => InitialDto.parse(item)).toList()
        : [];
  }

  Future<InitialDto> find() async {
    List<InitialDto> result = await list();
    return result.isNotEmpty ? result[0] : InitialDto(no: 0);
  }
}
