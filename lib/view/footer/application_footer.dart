import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:buzzer_beater/utility/navigator_position.dart';
import 'package:buzzer_beater/view/const/application_const.dart';

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
      Provider.of<NavigatorPosition>(context, listen: false).changed(index);
      contentsController.animateToPage(index,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: bottomNavigationBarItems,
      // selectedRouteの現在値をcurrentとする
      currentIndex: Provider.of<NavigatorPosition>(context).selectedRoute,
      onTap: onItemTapped,
    );
  }
}
