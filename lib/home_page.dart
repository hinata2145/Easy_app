import 'package:easy_app/component/memo_contents.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              ListTile(
                title: const Text('通知設定'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('ログアウト'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('プライバシーポリシー'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('利用規約'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('お問い合わせ'),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            ListView(
              children: [
                Container(
                  // color: Colors.red,
                  margin: const EdgeInsets.only(top: 36, right: 36, left: 36),
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
                        padding: const EdgeInsets.only(top: 16, bottom: 16),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MemoContents(),
                            MemoContents(),
                            MemoContents(),
                            MemoContents(),
                            MemoContents(),
                            MemoContents(),
                            Text(
                              '2月2日',
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(height: 28),
                            Center(
                              child: Text('本日はまだタスクなし'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                color: Colors.white,
                height: 56,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '今日のタスクを記入',
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
