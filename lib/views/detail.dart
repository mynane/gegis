import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String id;
  DetailPage(this.id);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('列表详情'),
      ),
      body: new Center(
        child: new Text('这是详情页详情' + id),
      )
    );
  }
}

