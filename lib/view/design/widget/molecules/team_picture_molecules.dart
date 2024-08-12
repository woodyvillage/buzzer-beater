import 'package:buzzer_beater/model/form/dto/form_item_dto.dart';
import 'package:buzzer_beater/view/design/widget/atoms/picker/picture_picker_atoms.dart';
import 'package:buzzer_beater/view/design/wrapper/molecules_widget.dart';
import 'package:flutter/material.dart';

class TeamPictureMolecules extends MoleculeWidget {
  const TeamPictureMolecules({
    super.key,
    required this.item,
  });
  final FormItemDto item;

  @override
  Widget buildMolecule(final BuildContext context) {
    return PicturePickerAtoms(
      image: createDecorationImage(item.image),
      hasCursol: true,
    );
  }

  DecorationImage createDecorationImage(String? image) {
    return DecorationImage(
      image: AssetImage(image ?? 'images/no_image.jpg'),
      fit: BoxFit.cover,
    );
  }
}
