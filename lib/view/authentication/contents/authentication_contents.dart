import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:buzzer_beater/model/data/dao/initial_dao.dart';
import 'package:buzzer_beater/model/data/dto/initial_dto.dart';

class AuthenticationContents extends StatefulWidget {
  const AuthenticationContents({super.key});

  @override
  State createState() => _AuthenticationContentsState();
}

class _AuthenticationContentsState extends State<AuthenticationContents> {
  // 入力したメールアドレス・パスワード
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // 1行目 メールアドレス入力用テキストフィールド
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(labelText: 'メールアドレス'),
                onChanged: (String value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
              // 2行目 パスワード入力用テキストフィールド
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(labelText: 'パスワード'),
                obscureText: true,
                onChanged: (String value) {
                  setState(() {
                    _password = value;
                  });
                },
              ),
              // 3行目 ユーザ登録ボタン
              ElevatedButton(
                child: const Text('ユーザ登録'),
                onPressed: () async {
                  try {
                    final User? user = (await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: _email, password: _password))
                        .user;
                    if (user != null) {
                      if (kDebugMode) {
                        print("ユーザ登録しました");
                        print("ユーザ1:${user.uid}");
                        print("ユーザ2:${user.email}");
                        print("ユーザ3:${user.tenantId}");
                        print("ユーザ4:${user.providerData}");
                      }
                      // イニシャルテーブル
                      InitialDao dao = InitialDao();
                      InitialDto dto = InitialDto(
                        provider: 'a',
                        registed: 'b',
                      );
                      await dao.insert(dto);
                      // user.providerData[0].providerId;
                    }
                  } catch (e) {
                    print(e);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
