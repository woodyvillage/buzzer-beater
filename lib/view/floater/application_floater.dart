import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:buzzer_beater/utility/floater_action.dart';
import 'package:buzzer_beater/utility/navigator_position.dart';
import 'package:buzzer_beater/view/const/application_const.dart';

class ApplicationFloater extends StatefulWidget {
  const ApplicationFloater({super.key});

  @override
  State createState() => _ApplicationFloaterState();
}

class _ApplicationFloaterState extends State<ApplicationFloater> {
  final bottomNavigationBarItems = <BottomNavigationBarItem>[];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var index = Provider.of<NavigatorPosition>(context).selectedRoute;
    if (floaterClasses[index] == null) {
      return Container();
    } else {
      return FloatingActionButton.extended(
        backgroundColor: Theme.of(context).primaryColorDark,
        icon: floaterIcon[index],
        label: Text(floaterText[index]!),
        onPressed: () {
          FloaterAction.dispatch(context, index);
        },
      );
    }
  }
}
