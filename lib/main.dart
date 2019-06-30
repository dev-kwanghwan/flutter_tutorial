import 'package:flutter/material.dart';

import 'codelabs/codelab1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 학습하기',
      theme: ThemeData(primaryColor: Colors.black),
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 학습하기'),
      ),
      body: RaisedButton(
          child: Text("WriteYourFirstFlutterApp Button"),
          onPressed: () {
            moveWriteYourFirstFlutterApp(context);
          }),
    );
  }

  void moveWriteYourFirstFlutterApp(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => WriteYourFirstFlutterAppRoute()));
  }
}
