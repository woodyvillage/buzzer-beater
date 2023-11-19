import 'package:flutter/material.dart';
import 'package:buzzer_beater/l10n/l10n.dart';
// import 'package:buzzer_beater/view/signage/signage_builder.dart';
// import 'package:lunch_wallet/view/contents/wallet/wallet_builder.dart';

class ApplicationContents extends StatefulWidget {
  const ApplicationContents({super.key});

  @override
  State createState() => _ApplicationContentsState();
}

class _ApplicationContentsState extends State<ApplicationContents> {
  final controller = PageController(
    initialPage: 0,
    viewportFraction: 1.0,
  );

  var pageViewInitialized = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      pageViewInitialized = true;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.applicationTitle),
      ),
      body: Column(
        children: <Widget>[
          // 固定ヘッダ
          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: Text(l10n.applicationTitle),
          ),
          // 可変ページャー
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (int index) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Change to Page: $index'),
                  duration: const Duration(milliseconds: 200),
                ));
              },
              children: [
                Container(
                  color: Colors.pink,
                  child: Text(pageViewInitialized
                      ? 'Page: ${controller.page?.floor()}'
                      : ''),
                ),
                Container(
                  color: Colors.green,
                  child: Text(pageViewInitialized
                      ? 'Page: ${controller.page?.floor()}'
                      : ''),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
