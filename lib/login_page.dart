import 'package:easy_app/component/common_button.dart';
import 'package:easy_app/component/input_form.dart';
import 'package:easy_app/home_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ログイン"),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              SizedBox(
                  height: 40,
                  width: 340,
                  child: SignInButton(
                    Buttons.google,
                    text: "Googleで続行",
                    onPressed: () {},
                  )),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: 340,
                child: SignInButton(
                  Buttons.apple,
                  text: "Appleで続行",
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 48),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36),
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
                  SizedBox(height: 48),
                  Text('メールアドレス'),
                  SizedBox(height: 12),
                  InputForm(),
                  SizedBox(height: 12),
                  Text('パスワード'),
                  SizedBox(height: 12),
                  InputForm(),
                  SizedBox(height: 60),
                  CommonButton(
                    text: 'ログイン',
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "パスワードの再設定",
                      style: const TextStyle(color: Colors.blue, fontSize: 16),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
