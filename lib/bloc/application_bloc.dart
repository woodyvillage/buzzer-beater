// import 'package:rxdart/rxdart.dart';
// import 'package:buzzer_beater/dao/initial_dao.dart';
// import 'package:buzzer_beater/dto/initial_dto.dart';
// import 'package:buzzer_beater/const/database_const.dart';

// class ApplicationBloc {
//   // コントロール
//   final _getInitialController = BehaviorSubject<bool>();
//   Sink<bool> get trigger => _getInitialController.sink;
//   final _setInitialController = BehaviorSubject<InitialDto>();
//   Stream<InitialDto> get teams => _setInitialController.stream;

//   ApplicationBloc() {
//     _getInitialController.stream.listen((trigger) async {
//       InitialDao dao = InitialDao();
//       // InitialDto dto = (await dao.select(DatabaseConst.id)) as InitialDto;
//       // _setInitialController.sink.add(dto);
//     });
//   }

//   void dispose() {
//     _getInitialController.close();
//     _setInitialController.close();
//   }
// }
