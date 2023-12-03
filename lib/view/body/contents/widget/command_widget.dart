import 'package:flutter/material.dart';
import 'package:buzzer_beater/view/const/application_const.dart';

class CommandWidget {
  static Widget build(BuildContext context,bool edit) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          submitButton(edit),
          cancelButton(context),
          deleteButton(edit),
        ],
      ),
    );
  }

  static Widget submitButton(bool edit) {
    return ElevatedButton.icon(
      icon: edit == false ? formIcon[0] : formIcon[3],
      label: edit == false ? formText[0] : formText[3],
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {},
    );
  }

  static Widget cancelButton(BuildContext context) {
      return Row(
        children: <Widget>[
          Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
          ElevatedButton.icon(
            icon:  formIcon[1],
            label:  formText[1],
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
      onPressed: () => Navigator.pop(context),
          ),
        ],
      );
  }


  static Widget deleteButton(bool edit) {
    if (edit) {
      return Row(
        children: <Widget>[
          Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
          ElevatedButton.icon(
            icon:  formIcon[2],
            label:  formText[2],
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {},
          ),
        ],
      );
    } else {
      return Container();
    }
  }
}
