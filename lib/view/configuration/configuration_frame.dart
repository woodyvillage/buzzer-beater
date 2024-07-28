import 'package:buzzer_beater/view/configuration/contents/configuration_contents.dart';
import 'package:buzzer_beater/view/header/application_header.dart';
import 'package:flutter/material.dart';

class ConfigurationFrame extends StatelessWidget {
  const ConfigurationFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // ヘッダー
      appBar: ApplicationHeader(isView: false),
      // // コンテンツ
      body: ConfigurationContents(),
    );
  }
}
