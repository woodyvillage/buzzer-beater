import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:buzzer_beater/const/application_const.dart';
import 'package:buzzer_beater/service/floater_action_service.dart';
import 'package:buzzer_beater/service/navigator_position_service.dart';

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
    var index = Provider.of<NavigatorPositionService>(context).selectedRoute;
    if (floaterClasses[index] == null) {
      return Container();
    } else {
      return FloatingActionButton.extended(
        backgroundColor: Theme.of(context).primaryColorDark,
        foregroundColor: Colors.white,
        icon: floaterIcon[index],
        label: Text(floaterText[index]!),
        onPressed: () {
          FloaterActionService.dispatch(context, index);
        },
      );
    }
  }
}
