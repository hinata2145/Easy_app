import 'package:easy_app/component/common_button.dart';
import 'package:easy_app/component/input_form.dart';
import 'package:easy_app/home_page.dart';
import 'package:easy_app/resetting_pass.dart';
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
      body: ListView(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  SizedBox(
                      height: 60,
                      width: 340,
                      child: SignInButton(
                        Buttons.google,
                        text: "Googleで続行",
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {},
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 60,
                    width: 340,
                    child: SignInButton(
                      Buttons.apple,
                      text: "Appleで続行",
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(height: 48),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: Row(
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 48),
                          const Text('メールアドレス'),
                          const SizedBox(height: 12),
                          const InputForm(),
                          const SizedBox(height: 12),
                          const Text('パスワード'),
                          const SizedBox(height: 12),
                          SizedBox(
                            height: 50,
                            width: 340,
                            child: TextField(
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    icon: const Icon(Icons.visibility_off),
                                    onPressed: () {},
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                          ),
                          const SizedBox(height: 60),
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
                        ],
                      ),
                    ],
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
                                builder: (context) => const ResettingPass()),
                          );
                        },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
