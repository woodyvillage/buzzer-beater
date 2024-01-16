import 'package:flutter/material.dart';
import 'package:buzzer_beater/model/form/dto/form_picture_dto.dart';
import 'package:buzzer_beater/view/design/widget/atoms/button/overlay_button_atoms.dart';
import 'package:buzzer_beater/view/design/widget/atoms/picture/picture_window_atoms.dart';
import 'package:buzzer_beater/view/design/wrapper/molecules_widget.dart';

class PicturePickerMolecules extends MoleculeWidget {
  const PicturePickerMolecules({
    super.key,
    required this.picture,
  });
  final FormPictureDto picture;

  @override
  Widget buildMolecule(final BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: buildMolecules(context),
    );
  }

  List<Widget> buildMolecules(final BuildContext context) {
    List<Widget> containers = [];
    containers.add(PictureWindowAtoms(picture: picture));
    containers.add(OverlayButtonAtoms(callback: picture));
    return containers;
  }
}
