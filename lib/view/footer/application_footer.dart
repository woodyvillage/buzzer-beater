import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:buzzer_beater/utility/route_position.dart';
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
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    contentsTexts[0] = AppLocalizations.of(context)!.routeTeam;
    contentsTexts[1] = AppLocalizations.of(context)!.routeMember;
    contentsTexts[2] = AppLocalizations.of(context)!.routeRoster;
    contentsTexts[3] = AppLocalizations.of(context)!.routeMatch;
    contentsTexts[4] = AppLocalizations.of(context)!.routeResult;

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
      Provider.of<RoutePosition>(context, listen: false).changed(index);
      contentsController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: bottomNavigationBarItems,
      // selectedRouteの現在値をcurrentとする
      currentIndex: Provider.of<RoutePosition>(context).selectedRoute,
      onTap: onItemTapped,
    );
  }
}
