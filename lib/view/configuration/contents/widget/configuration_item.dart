import 'package:buzzer_beater/const/configuration_const.dart';
import 'package:buzzer_beater/view/design/listview_button_item/organisms/listview_button_organisms.dart';
import 'package:flutter/material.dart';

class ConfigurationItem extends StatelessWidget {
  const ConfigurationItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    Widget item;
    switch (settingsLists[index][settingType]) {
      case patternButton:
        item = ListviewButtonOrganims(
          index: index,
        );
        break;
      default:
        item = Container();
    }
    return item;
  }
}
