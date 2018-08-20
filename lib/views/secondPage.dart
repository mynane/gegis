import 'package:flutter/material.dart';
// import 'package:gegis/components/loading.dart';
import 'package:gegis/components/quick.dart';

class SecondPage extends StatefulWidget {
  @override
  SecondPageState createState() => new SecondPageState();
}

class SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("界面2"),
      ),
      body:  new Column(
        children: <Widget>[
          new Quick(),
        ],
      )
    );
  }
}
