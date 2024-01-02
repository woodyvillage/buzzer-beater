import 'package:flutter/material.dart';
import 'package:buzzer_beater/view/design/listview_button/atoms/listview_button_atoms.dart';

class ListviewButtonOrganims extends StatefulWidget {
  const ListviewButtonOrganims(
      {super.key, required this.index, required this.callback});
  final int index;
  final VoidCallback callback;

  @override
  State createState() => _ListviewButtonOrganimsState();
}

class _ListviewButtonOrganimsState extends State<ListviewButtonOrganims> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListviewButtonAtoms(
      index: widget.index,
      callback: widget.callback,
    );
  }
}
