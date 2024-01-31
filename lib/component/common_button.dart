import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton(
      {super.key,
      required this.text,
      this.onpressed,
      this.textcolor,
      this.backgroundcolor});

  final String text;
  final void Function()? onpressed;
  final Color? textcolor;
  final Color? backgroundcolor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: textcolor ?? Colors.white,
        backgroundColor: backgroundcolor ?? Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: onpressed,
      child: Text(
        text,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
