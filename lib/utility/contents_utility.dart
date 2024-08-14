import 'package:buzzer_beater/const/common_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

String getText(BuildContext context, String keyword) {
  switch (keyword) {
    case 'C01':
      return AppLocalizations.of(context)!.db_initialize;
    case 'AT01':
      return AppLocalizations.of(context)!.teams_picture('NAME');
    case 'AT02':
      return AppLocalizations.of(context)!.teams_name('NAME');
    case 'AT03':
      return AppLocalizations.of(context)!.teams_shortname('NAME');
    case 'AT04':
      return AppLocalizations.of(context)!.teams_region('NAME');
    case 'CMD01':
      return AppLocalizations.of(context)!.cancel;
    case 'CMD02':
      return AppLocalizations.of(context)!.submit;
    default:
      return stringNull;
  }
}

String getDesc(BuildContext context, String keyword) {
  switch (keyword) {
    case 'C01':
      return AppLocalizations.of(context)!.init;
    case 'AT01':
      return AppLocalizations.of(context)!.teams_picture('DESC');
    case 'AT02':
      return AppLocalizations.of(context)!.teams_name('DESC');
    case 'AT03':
      return AppLocalizations.of(context)!.teams_shortname('DESC');
    case 'AT04':
      return AppLocalizations.of(context)!.teams_region('DESC');
    default:
      return stringNull;
  }
}

Color getColor(String keyword) {
  switch (keyword) {
    case stringWhite:
      return Colors.white;
    case stringOrange:
      return Colors.orange;
    case stringGreen:
      return Colors.green;
    default:
      return Colors.transparent;
  }
}

IconData getIcon(String keyword) {
  switch (keyword) {
    case iconCancel:
      return Icons.cancel_outlined;
    case iconSubmit:
      return Icons.check_circle_outlined;
    default:
      return Icons.abc;
  }
}
