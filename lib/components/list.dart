import 'package:flutter/material.dart';
// import 'package:gegis/views/detail.dart';

class ListComponent extends StatefulWidget {
  @override
  _ListState createState() => new _ListState();
}

class _ListState extends State<ListComponent> {
  void _onTap(String id) {
    // Navigator.of(context).push(new PageRouteBuilder(
    //   opaque: false,
    //   pageBuilder: (BuildContext context, _, __) {
    //     return new DetailPage(id);
    //   },
    //   transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
    //     return new FadeTransition(
    //       opacity: animation,
    //       child: new RotationTransition(
    //         turns: new Tween<double>(begin: 0.5, end: 1.0).animate(animation),
    //         child: child,
    //       ),
    //     );
    //   }
    // )
    // );
    // Navigator.of(context).push(new MaterialPageRoute(
    //   builder: (_) => new DetailPage(id),
    // ));
    Navigator.of(context).pushNamed('/setting');
  }
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return new Card(
          child: new Container(
            padding: new EdgeInsets.all(10.0),
            child: new ListTile(
              subtitle: new Container(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text("标题", style: new TextStyle(fontWeight: FontWeight.bold, fontSize:  16.0),),
                      ],
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            new Text("时间： "),
                            new Text("2012-12-12 12:12"),
                          ],
                        ),
                      ]
                    ),
                    new Row(
                      children: <Widget>[
                        new Container(
                          padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 2.0),
                          child: new Text("内容"),
                        )
                      ],
                    )
                  ],
                ),
              ),
              onTap: () => _onTap('123'),
              trailing: new Icon(Icons.keyboard_arrow_right, color: Colors.grey),
            ),
          )
        );
      }
    );
  } 
}
