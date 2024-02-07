import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton(
      {super.key,
      required this.text,
      this.onpressed,
      this.textcolor,
      this.backgroundcolor,
      this.image});

  final String text;
  final void Function()? onpressed;
  final Color? textcolor;
  final Color? backgroundcolor;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: const BorderSide(
          color: Colors.black,
          width: 1,
        ),
        foregroundColor: textcolor ?? Colors.white,
        backgroundColor: backgroundcolor ?? Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: onpressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image != null ? Image.asset(image!) : Container(),
          Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
