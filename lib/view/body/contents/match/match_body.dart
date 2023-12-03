import 'package:flutter/material.dart';

class MatchBody extends StatelessWidget {
  const MatchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: const Text("match"),
      ),
    );
  }
}
