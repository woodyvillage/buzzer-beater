import 'package:flutter/material.dart';
import 'package:buzzer_beater/view/const/application_const.dart';

class ApplicationSettings extends StatefulWidget {
  const ApplicationSettings({super.key});

  @override
  State createState() => _ApplicationSettingsState();
}

class _ApplicationSettingsState extends State<ApplicationSettings> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // // 固定ヘッダ
        // Container(
        //   margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        //   width: MediaQuery.of(context).size.width,
        //   height: 70,
        //   child: Text(l10n.applicationTitle),
        // ),
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
