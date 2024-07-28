import 'package:buzzer_beater/view/application/contents/application_contents.dart';
import 'package:buzzer_beater/view/header/application_header.dart';
import 'package:flutter/material.dart';

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
      // // フローティングボタン
      // floatingActionButton: ApplicationFloater(),
      // ナビゲーター
      // bottomNavigationBar: ApplicationFooter(),
    );
  }
}
