import 'package:buzzer_beater/const/common_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

String getText(BuildContext context, String keyword) {
  switch (keyword) {
    case 'C01':
      return AppLocalizations.of(context)!.db_initialize;
    case 'AT01':
      return AppLocalizations.of(context)!.teams_picture;
    case 'AT02':
      return AppLocalizations.of(context)!.teams_name;
    case 'AT03':
      return AppLocalizations.of(context)!.teams_shortname;
    case 'AT04':
      return AppLocalizations.of(context)!.teams_region;
    case 'submit':
      return AppLocalizations.of(context)!.submit;
    case 'cancel':
      return AppLocalizations.of(context)!.cancel;
    // case 'C04':
    //   return Text(AppLocalizations.of(context)!.account_remarks);
    default:
      return stringNull;
  }
}

String getDesc(BuildContext context, String keyword) {
  switch (keyword) {
    case 'C01':
      return AppLocalizations.of(context)!.init;
    case 'AT01':
      return AppLocalizations.of(context)!.teams_picture;
    case 'AT02':
      return AppLocalizations.of(context)!.teams_name;
    case 'AT03':
      return AppLocalizations.of(context)!.teams_shortname;
    case 'AT04':
      return AppLocalizations.of(context)!.teams_region;
    // case 'C02':
    // case 'C03':
    // case 'C04':
    //   return Text(AppLocalizations.of(context)!.edit);
    default:
      return stringNull;
  }
}
