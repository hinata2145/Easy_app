import 'package:easy_app/component/common_button.dart';
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
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
