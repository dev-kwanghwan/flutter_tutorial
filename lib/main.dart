import 'package:flutter/material.dart';

import 'codelabs/codelab1.dart';
import 'codelabs/codelab2.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RaisedButton(
              child: Text("WriteYourFirstFlutterApp Button"),
              onPressed: () {
                moveWriteYourFirstFlutterAppRoute(context);
              }),
          RaisedButton(
              child: Text("BuildingBeautifulUIsWithFlutterRoute Button"),
              onPressed: () {
                moveBuildingBeautifulUIsWithFlutterRoute(context);
              }),
        ],
      )
    );
  }

  void moveWriteYourFirstFlutterAppRoute(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => WriteYourFirstFlutterAppRoute()));
  }

  void moveBuildingBeautifulUIsWithFlutterRoute(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => BuildingBeautifulUIsWithFlutterRoute()));
  }
}
