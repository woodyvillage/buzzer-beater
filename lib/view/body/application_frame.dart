import 'package:flutter/material.dart';
import 'package:buzzer_beater/view/body/contents/application_contents.dart';
import 'package:buzzer_beater/view/floater/application_floater.dart';
import 'package:buzzer_beater/view/footer/application_footer.dart';
import 'package:buzzer_beater/view/header/application_header.dart';

class ApplicationFrame extends StatefulWidget {
  const ApplicationFrame({super.key});

  @override
  State<ApplicationFrame> createState() => _ApplicationFrameState();
}

class _ApplicationFrameState extends State<ApplicationFrame> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // ヘッダー
      appBar: ApplicationHeader(isView: true),
      // コンテンツ
      body: ApplicationContents(),
      // フローティングボタ
      floatingActionButton: ApplicationFloater(),
      // ナビゲーター
      bottomNavigationBar: ApplicationFooter(),
    );
  }
}
