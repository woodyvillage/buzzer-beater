import 'package:buzzer_beater/const/database_const.dart';

class InitialDto {
  int no;

  InitialDto({required this.no});

  factory InitialDto.parse(Map<String, dynamic> record) => InitialDto(
        no: record[DatabaseConst.columnNo],
      );

  Map<String, dynamic> toMap() => {
        DatabaseConst.columnNo: no,
      };
}
