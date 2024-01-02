import 'package:flutter/material.dart';
import 'package:buzzer_beater/const/configuration_const.dart';
import 'package:buzzer_beater/view/configuration/contents/widget/configuration_item.dart';

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
            return ConfigurationItem(index: index);
          },
        ),
      ),
    );
  }
}
