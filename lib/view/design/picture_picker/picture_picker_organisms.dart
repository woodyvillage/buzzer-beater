import 'dart:io';
import 'package:flutter/material.dart';
import 'package:buzzer_beater/model/form/dto/form_picture_dto.dart';
import 'package:buzzer_beater/view/design/widget/molecules/picture_picker_molecules.dart';
import 'package:image_picker/image_picker.dart';

class PicturePickerOrganisms extends StatefulWidget {
  const PicturePickerOrganisms({super.key, required this.picture});
  final FormPictureDto picture;

  @override
  State createState() => _PicturePickerOrganismsState();
}

class _PicturePickerOrganismsState extends State<PicturePickerOrganisms> {
  final _picker = ImagePicker();

  Future pick() async {
    var image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      widget.picture.image = Image.file(
        File(image!.path),
        fit: BoxFit.cover,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    widget.picture.callback = () {
      pick();
    };

    return PicturePickerMolecules(
      picture: widget.picture,
    );
  }
}
