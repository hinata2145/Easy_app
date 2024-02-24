import 'package:flutter/material.dart';

class MemoContents extends StatefulWidget {
  const MemoContents({super.key});

  @override
  State<MemoContents> createState() => _MemoContentsState();
}

class _MemoContentsState extends State<MemoContents> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '1月31日',
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 16),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isChecked ? Colors.blue : Colors.white,
                      border: Border.all(color: Colors.black),
                    ),
                    child: isChecked
                        ? const Icon(Icons.check, color: Colors.white)
                        : const Icon(Icons.check, color: Colors.transparent),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '課題を終わらす',
                    style: TextStyle(fontSize: 16),
                  ),
                  RichText(
                    text: TextSpan(
                      text: '削除する',
                      style: const TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
