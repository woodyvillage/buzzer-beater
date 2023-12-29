import 'package:buzzer_beater/const/database_const.dart';

class InitialDto {
  String provider;
  String registed;

  InitialDto({
    required this.provider,
    required this.registed,
  });

  Map<String, dynamic> toMap() => {
        DatabaseConst.columnProvider: provider,
        DatabaseConst.columnRegisted: registed,
      };
}
