import 'package:flutter/material.dart';
import 'package:buzzer_beater/view/authentication/contents/authentication_contents.dart';

class AuthenticationFrame extends StatefulWidget {
  const AuthenticationFrame({super.key});

  @override
  State<AuthenticationFrame> createState() => _AuthenticationFrameState();
}

class _AuthenticationFrameState extends State<AuthenticationFrame> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // コンテンツ
      body: AuthenticationContents(),
    );
  }
}
