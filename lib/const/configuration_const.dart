import 'package:flutter/material.dart';
import 'package:buzzer_beater/view/configuration/contents/general/general_body.dart';

final PageController settingsController = PageController(
  initialPage: 0,
  viewportFraction: 1.0,
);

final settingsClasses = [
  const GeneralBody(),
];

final settingsIcons = [
  const Icon(Icons.home),
];

final settingsTexts = ["全般"];
