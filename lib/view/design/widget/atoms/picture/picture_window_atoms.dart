import 'package:flutter/material.dart';
import 'package:buzzer_beater/model/form/dto/form_picture_dto.dart';
import 'package:buzzer_beater/view/design/wrapper/atoms_widget.dart';

class PictureWindowAtoms extends AtomWidget {
  const PictureWindowAtoms({
    super.key,
    required this.picture,
  });
  final FormPictureDto picture;

  @override
  Widget buildMaterial(BuildContext context) {
    return SizedBox(
      height: picture.height,
      width: picture.width,
      child: picture.image != null
          ? Image.file(
              picture.image!,
              fit: BoxFit.cover,
            )
          : Image.asset(
              'images/noimage.png',
              fit: BoxFit.fitHeight,
            ),
    );
  }
}
