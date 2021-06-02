import 'package:flutter/material.dart';

class CicularProgressPage extends StatefulWidget {
  CicularProgressPage({Key key}) : super(key: key);

  @override
  _CicularProgressPageState createState() => _CicularProgressPageState();
}

class _CicularProgressPageState extends State<CicularProgressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.red,
        ),
      ),
    );
  }
}
