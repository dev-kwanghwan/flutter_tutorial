import 'package:flutter/material.dart';

/*
    codelabs : https://flutter.dev/docs/codelabs
    - Building Beautiful UIs with Flutter
 */

class BuildingBeautifulUIsWithFlutterRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FriendlyChatApp();
    return Scaffold(
      appBar: AppBar(
        title: Text('FriendlyChat'),
      ),
      body: Text("hello world"),
    );
  }
}

class FriendlyChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("FriendlyChat"),
      ),
      body: new ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _buildTextComposer(),
    );
  }
  
  Widget _buildTextComposer() {
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: new TextField(
        controller: _textController,
        onSubmitted: _handleSubmitted,
        decoration: new InputDecoration.collapsed(hintText: "Send a message")
      )
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
  }
}