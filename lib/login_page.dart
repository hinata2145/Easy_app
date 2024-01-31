import 'package:easy_app/component/common_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 270,
                  child: Column(
                    children: [
                      const Text(
                        "EasyAppを始めよう!",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 48),
                      const TextField(
                        decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 20),
                          labelText: 'メールアドレス',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const TextField(
                        decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 20),
                          labelText: 'パスワード',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                      ),
                      const SizedBox(height: 48),
                      SizedBox(
                        width: 270,
                        height: 40,
                        child: CommonButton(
                          text: '新規登録する',
                          onpressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 48),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 14),
                        child: Text(
                          'or',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 270,
                  height: 40,
                  child: CommonButton(
                    text: 'Goggleアカウントで続行',
                    onpressed: () {},
                    textcolor: Colors.black,
                    backgroundcolor: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: 270,
                  height: 40,
                  child: CommonButton(
                    text: 'Appleアカウントで続行',
                    onpressed: () {},
                    textcolor: Colors.black,
                    backgroundcolor: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: 270,
                  height: 40,
                  child: CommonButton(
                    text: 'ログイン',
                    onpressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                RichText(
                  text: TextSpan(
                    text: "ご利用規約",
                    style: const TextStyle(color: Colors.black, fontSize: 12),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    text: "プライバシーポリシー",
                    style: const TextStyle(color: Colors.black, fontSize: 12),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
