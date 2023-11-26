import 'package:flutter/material.dart';
import 'package:buzzer_beater/view/body/settings/application_settings.dart';
import 'package:buzzer_beater/view/header/application_header.dart';

class ConfigurationFrame extends StatelessWidget {
  const ConfigurationFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // ヘッダー
      appBar: ApplicationHeader(isView: false),
      // コンテンツ
      body: ApplicationSettings(),
    );
  }
}
