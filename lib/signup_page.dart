import 'package:easy_app/component/common_button.dart';
import 'package:easy_app/component/input_form.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("アカウントを登録"),
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 60),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('メールアドレス'),
                SizedBox(height: 12),
                InputForm(),
                SizedBox(height: 12),
                Text('パスワード'),
                SizedBox(height: 12),
                InputForm(),
                SizedBox(height: 12),
                Text('確認用パスワード'),
                SizedBox(height: 12),
                InputForm(),
                SizedBox(height: 80),
                CommonButton(text: '新規登録'),
              ],
            ),
          ),
        ));
  }
}
