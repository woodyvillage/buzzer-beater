import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:buzzer_beater/utility/navigator_position.dart';
import 'package:buzzer_beater/view/application_root.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => NavigatorPosition(),
    child: const ApplicationRoot(),
  ));
}
