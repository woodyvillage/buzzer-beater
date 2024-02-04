import 'package:buzzer_beater/model/form/dto/form_button_dto.dart';
import 'package:buzzer_beater/model/form/dto/form_field_dto.dart';
import 'package:buzzer_beater/model/form/dto/form_picture_dto.dart';
import 'package:buzzer_beater/model/page/dto/abstract/base_page_dto.dart';

class TeamPageDto extends BasePageDto {
  FormPictureDto? image;
  FormFieldDto? name;
  FormFieldDto? slogan;
  List<FormButtonDto> command = [];

  TeamPageDto({required super.index});
}
