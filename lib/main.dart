import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'codelabs/codelab1.dart';
import 'codelabs/codelab2.dart';
import 'codelabs/codelab3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ThemeData kIOSTheme = new ThemeData(
      primarySwatch: Colors.orange,
      primaryColor: Colors.grey[100],
      primaryColorBrightness: Brightness.light);

  final ThemeData kDefaultTheme = new ThemeData(
    primarySwatch: Colors.purple,
    accentColor: Colors.orangeAccent[400],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 학습하기',
      theme: defaultTargetPlatform == TargetPlatform.iOS
          ? kIOSTheme
          : kDefaultTheme,
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
            RaisedButton(
                child: Text("AddingGoogleMapsToAFlutterApp Button"),
                onPressed: () {
                  moveAddingGoogleMapsToAFlutterAppRoute(context);
                }),
          ],
        ));
  }

  void moveWriteYourFirstFlutterAppRoute(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => WriteYourFirstFlutterAppRoute()));
  }

  void moveBuildingBeautifulUIsWithFlutterRoute(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => BuildingBeautifulUIsWithFlutterRoute()));
  }

  void moveAddingGoogleMapsToAFlutterAppRoute(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => AddingGoogleMapsToAFlutterAppRoute()));
  }
}
