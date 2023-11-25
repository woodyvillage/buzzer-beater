import 'package:flutter/material.dart';
import 'package:buzzer_beater/view/body/contents/match/body.dart';
import 'package:buzzer_beater/view/body/contents/member/body.dart';
import 'package:buzzer_beater/view/body/contents/result/body.dart';
import 'package:buzzer_beater/view/body/contents/roster/body.dart';
import 'package:buzzer_beater/view/body/contents/team/body.dart';

class ApplicationContents extends StatefulWidget {
  const ApplicationContents({super.key});

  @override
  State createState() => _ApplicationContentsState();
}

class _ApplicationContentsState extends State<ApplicationContents> {
  var pageViewInitialized = false;
  final controller = PageController(
    initialPage: 0,
    viewportFraction: 1.0,
  );

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
            controller: controller,
            children: [
              TeamBody(),
              MemberBody(),
              RosterBody(),
              MatchBody(),
              ResultBody(),
            ],
          ),
        ),
      ],
    );
  }
}
