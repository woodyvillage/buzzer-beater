import 'package:flutter/material.dart';
import 'package:buzzer_beater/view/body/contents/application_contents.dart';
import 'package:buzzer_beater/view/footer/application_footer.dart';
import 'package:buzzer_beater/view/header/application_header.dart';

class ApplicationFrame extends StatelessWidget {
  const ApplicationFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // ヘッダー
      appBar: ApplicationHeader(isView: true),
      // コンテンツ
      body: ApplicationContents(),
      // ナビゲーター
      bottomNavigationBar: ApplicationFooter(),
    );
  }
}
