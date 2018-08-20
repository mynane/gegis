import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  SettingState createState() => new SettingState();
}

class SettingState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Text('欢迎光临'),
    );
  }
}
