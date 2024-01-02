import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:buzzer_beater/const/application_const.dart';
import 'package:buzzer_beater/service/navigator_position_service.dart';

class ApplicationFooter extends StatefulWidget {
  const ApplicationFooter({super.key});

  @override
  State createState() => _ApplicationFooterState();
}

class _ApplicationFooterState extends State<ApplicationFooter> {
  final bottomNavigationBarItems = <BottomNavigationBarItem>[];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < contentsIcons.length; i++) {
      bottomNavigationBarItems.add(BottomNavigationBarItem(
        icon: contentsIcons[i],
        label: contentsTexts[i],
      ));
    }
  }

  void onItemTapped(int index) {
    setState(() {
      // BottomNavigationBarItemの更新を促す
      Provider.of<NavigatorPositionService>(context, listen: false)
          .changed(index);
      contentsController.animateToPage(index,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Theme.of(context).primaryColorDark,
      items: bottomNavigationBarItems,
      // selectedRouteの現在値をcurrentとする
      currentIndex:
          Provider.of<NavigatorPositionService>(context).selectedRoute,
      onTap: onItemTapped,
    );
  }
}
