import 'package:easy_app/component/memo_contents.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

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
                title: Text('通知設定'),
                onTap: () {},
              ),
              ListTile(
                title: Text('ログアウト'),
                onTap: () {},
              ),
              ListTile(
                title: Text('プライバシーポリシー'),
                onTap: () {},
              ),
              ListTile(
                title: Text('利用規約'),
                onTap: () {},
              ),
              ListTile(
                title: Text('お問い合わせ'),
                onTap: () {},
              ),
            ],
          ),
        ),
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
                  MemoContents(),
                  Container(
                    padding: EdgeInsets.only(top: 16, bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
