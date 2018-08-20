import 'package:flutter/material.dart';
import 'package:gegis/views/firstPage.dart';
import 'package:gegis/views/secondPage.dart';
import 'package:gegis/views/thirdPage.dart';
import 'package:gegis/views/setting.dart';
import 'package:gegis/theme.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(new Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: themeData,
      home: new Scaffold(
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new FirstPage(),
            new SecondPage(),
            new ThirdPage()
          ]
        ),
        bottomNavigationBar: new Material(
          color: Colors.orangeAccent,
          child: new TabBar(
            controller: controller,
            tabs: <Tab>[
              new Tab(text: "列表", icon: new Icon(Icons.home)),
              new Tab(text: "通知", icon: new Icon(Icons.message)),
              new Tab(text: "我的", icon: new Icon(Icons.cloud)),
            ]
          )
        ),
      ),
      routes: <String, WidgetBuilder> {
        '/setting': (BuildContext context) => new SettingPage(title: '设置页面'),
        "/web": (_) => new WebviewScaffold(
          url: "https://www.baidu.com",
          userAgent: 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Mobile Safari/537.36',
          appBar: new AppBar(
            title: new Text("欢迎光临"),
          ),
        )
      },
    );
  }
}
