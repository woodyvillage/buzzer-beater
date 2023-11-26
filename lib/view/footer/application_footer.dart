import 'package:flutter/material.dart';
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
    _buildNavigationItem();
  }

  void _buildNavigationItem() {
    // NavigationUtility util = NavigationUtility();
    for (var route in routeset) {
      bottomNavigationBarItems.add(BottomNavigationBarItem(
        icon: route['icon'],
        label: route['name'],
      ));
    }
  }

  // void _onItemTapped(int index) {
  //   setState(() {
  //     selectedRoute = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: bottomNavigationBarItems,
      currentIndex: selectedIndex,
      // onTap: onItemTapped,
    );
  }
}
