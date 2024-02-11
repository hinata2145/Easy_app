import 'package:flutter/material.dart';

class ResettingPass extends StatelessWidget {
  const ResettingPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("パスワード再設定"),
      ),
    );
  }
}