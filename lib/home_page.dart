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
    return Scaffold(
      key: _scaffoldKey,
      drawer: const Drawer(),
      body: Stack(
        children: [
          Align(
            alignment: Alignment(1, -0.8),
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
          Container(
            margin: const EdgeInsets.only(top: 80),
            child: IconButton(
              onPressed: () {
                _scaffoldKey.currentState!.openDrawer();
              },
              icon: Icon(Icons.menu),
              iconSize: 40,
            ),
          ),
          Align(
            alignment: Alignment(-0.8, -0.6),
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
                    ? Icon(Icons.check, color: Colors.white)
                    : Icon(Icons.check, color: Colors.transparent),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
