import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:buzzer_beater/utility/route_position.dart';
import 'package:buzzer_beater/view/application_root.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => RoutePosition(),
    child: const ApplicationRoot(),
  ));
}
