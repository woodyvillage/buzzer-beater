import 'package:buzzer_beater/view/design/wrapper/atom_widget.dart';
import 'package:flutter/material.dart';

class PicturePickerAtoms extends AtomWidget {
  const PicturePickerAtoms({
    super.key,
    required this.image,
    required this.hasCursol,
  });
  final DecorationImage image;
  final bool hasCursol;

  @override
  Widget buildMaterial(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      width: MediaQuery.of(context).size.width,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
        image: image,
      ),
      child: hasCursol
          ? Center(
              child: IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 50,
                ),
                onPressed: () {},
              ),
            )
          : Container(),
    );
  }
}
