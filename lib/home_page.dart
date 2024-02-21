import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: const Drawer(),
        body: Stack(
          children: [
            Container(
              //color: Colors.red,
              margin: EdgeInsets.all(36),
              width: 358,
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              _scaffoldKey.currentState!.openDrawer();
                            },
                            icon: const Icon(Icons.menu),
                            iconSize: 28,
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 1),
                        child: IconButton(
                          icon: const Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
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
                                    color:
                                        isChecked ? Colors.blue : Colors.white,
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: isChecked
                                      ? const Icon(Icons.check,
                                          color: Colors.white)
                                      : const Icon(Icons.check,
                                          color: Colors.transparent),
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
                                    text: '削除',
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
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
                                    color:
                                        isChecked ? Colors.blue : Colors.white,
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: isChecked
                                      ? const Icon(Icons.check,
                                          color: Colors.white)
                                      : const Icon(Icons.check,
                                          color: Colors.transparent),
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
                                    text: '削除',
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 16, bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1月31日',
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(height: 28),
                        Center(
                          child: Text('本日はまだタスクなし'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        height: 56,
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '今日のタスクを記入',
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.edit),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
