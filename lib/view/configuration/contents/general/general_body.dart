import 'package:flutter/material.dart';
import 'package:buzzer_beater/const/configuration_const.dart';
import 'package:buzzer_beater/view/design/configuration_item/configuration_item_organisms.dart';

class GeneralBody extends StatelessWidget {
  const GeneralBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: settingsLists.length,
          itemBuilder: (context, index) {
            return ConfigurationItemOrganisms(index: index);
          },
        ),
      ),
    );
  }
}
