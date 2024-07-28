import 'package:buzzer_beater/view/design/wrapper/wrapper.dart';
import 'package:flutter/material.dart';

abstract class MoleculeWidget extends Wrapper {
  const MoleculeWidget({
    super.key,
    super.padding,
    super.margin,
  });

  Widget buildMolecule(final BuildContext context);

  @override
  Widget build(final BuildContext context) {
    final Widget child = buildMolecule(context);
    return buildWrapper(context, child) ?? child;
  }
}
