import 'package:buzzer_beater/model/data/dao/abstract/base_dao.dart';
import 'package:buzzer_beater/model/data/dto/initial_dto.dart';

class InitialDao extends BaseDao {
  Future<bool> isAuthorized() async {
    InitialDto dto = InitialDto(provider: "", registed: "");
    int? result = await count(dto);
    return result == null
        ? false
        : result == 0
            ? false
            : true;
  }
}
