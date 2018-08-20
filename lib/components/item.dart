import 'package:flutter/material.dart';

class ItemComponent extends StatelessWidget {
  ItemComponent(this._data);
  final Map<String, dynamic> _data;

  @override
  Widget build(BuildContext context) {
    void _onTap(String id) {
      Navigator.of(context).pushNamed('/setting');
    }
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
}
