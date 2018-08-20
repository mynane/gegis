import 'package:flutter/material.dart';

class Quick extends StatefulWidget {
  Quick({Key key}) : super(key : key);

  @override
  _QuickState createState() => _QuickState();
}

class _QuickState extends State<Quick> {
  void _onTap() {
    Navigator.of(context).pushNamed('/setting');
  }

  Widget buildItem(String type) {
    Map<String, dynamic> _data = {
      'shuling': {
        'url': 'images/shuling.jpg',
        'title': '苏宁易购'
      },
      'tianmaocaoshi': {
        'url': 'images/tianmaocaoshi.jpg',
        'title': '天猫超市'
      },
      'tianmaoguoji': {
        'url': 'images/tianmaoguoji.jpg',
        'title': '天猫国际'
      },
      'juhuasuan': {
        'url': 'images/juhuasuan.jpg',
        'title': '聚划算'
      },
      'fenlei': {
        'url': 'images/fenlei.jpg',
        'title': '分类'
      },
    };
    return new InkWell(
      onTap: _onTap,
      child: new Padding(
        padding: new EdgeInsets.fromLTRB(11.0, 6.0, 11.0, 6.0),
        child: Column(
          children: <Widget> [
            new Image.asset(
              _data[type]['url'],
              width: 50.0,
              height: 60.0,
              fit: BoxFit.scaleDown,
            ),
            new Text(_data[type]['title'], style: new TextStyle(
              fontSize: 12.0,
            )),
          ]
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.greenAccent.withOpacity(0.3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          buildItem('shuling'),
          buildItem('tianmaocaoshi'),
          buildItem('tianmaoguoji'),
          buildItem('juhuasuan'),
          buildItem('fenlei'),
        ]
      )
    );
  }
}
