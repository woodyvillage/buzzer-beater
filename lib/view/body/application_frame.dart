import 'package:flutter/material.dart';
import 'package:buzzer_beater/view/body/contents/application_contents.dart';
import 'package:buzzer_beater/view/footer/application_footer.dart';

class ApplicationFrame extends StatelessWidget {
  ApplicationFrame({super.key});

  final controller = PageController(
    initialPage: 0,
    viewportFraction: 1.0,
  );

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // コンテンツ
      body: ApplicationContents(),
    );
  }
}
