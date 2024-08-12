import 'package:buzzer_beater/const/rooting_const.dart';
import 'package:flutter/material.dart';

class ConfigurationContents extends StatefulWidget {
  const ConfigurationContents({super.key});

  @override
  State createState() => _ConfigurationContentsState();
}

class _ConfigurationContentsState extends State<ConfigurationContents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // 可変ページャー
        Expanded(
          child: PageView(
            controller: settingsController,
            children: settingsClasses,
          ),
        ),
      ],
    );
  }
}
