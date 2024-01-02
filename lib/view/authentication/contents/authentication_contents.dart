import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:buzzer_beater/utility/authentication_utility.dart';
import 'package:buzzer_beater/view/application_root.dart';

class AuthenticationContents extends StatefulWidget {
  const AuthenticationContents({super.key});

  @override
  State createState() => _AuthenticationContentsState();
}

class _AuthenticationContentsState extends State<AuthenticationContents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignInScreen(
        providers: [EmailAuthProvider()],
        actions: [
          AuthStateChangeAction<SignedIn>((context, state) {
            // イニシャルテーブル更新
            setUserAuthentication(
                state.user!.providerData[0].providerId, state.user!.uid);
            // 画面遷移
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const ApplicationRoot();
            }));
          }),
        ],
      ),
    );
  }
}
