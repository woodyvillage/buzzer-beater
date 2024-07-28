import 'package:buzzer_beater/const/common_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Text getText(BuildContext context, String word) {
  switch (word) {
    // case 'DEPOSIT':
    //   return Text(AppLocalizations.of(context)!.deposit);
    // case 'WITHDRAW':
    //   return Text(AppLocalizations.of(context)!.withdraw);
    case 'C01':
      return Text(AppLocalizations.of(context)!.db_initialize);
    // case 'C02':
    //   return Text(AppLocalizations.of(context)!.account_minimum);
    // case 'C03':
    //   return Text(AppLocalizations.of(context)!.account_maximum);
    // case 'C04':
    //   return Text(AppLocalizations.of(context)!.account_remarks);
    default:
      return const Text(stringNull);
  }
}

Text getDesc(BuildContext context, String word) {
  switch (word) {
    case 'C01':
      return Text(AppLocalizations.of(context)!.init);
    // case 'C02':
    // case 'C03':
    // case 'C04':
    //   return Text(AppLocalizations.of(context)!.edit);
    default:
      return const Text(stringNull);
  }
}
