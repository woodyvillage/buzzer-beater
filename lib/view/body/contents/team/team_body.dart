import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'package:buzzer_beater/common/advertisement.dart';
// import 'package:buzzer_beater/common/notifier.dart';
// import 'package:buzzer_beater/view/team/list.dart';

class TeamBody extends StatelessWidget {
  const TeamBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: const Text("team"),
      ),
    );
  }
}
