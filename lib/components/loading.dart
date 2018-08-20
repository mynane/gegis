import 'package:flutter/material.dart';
import 'package:gegis/icons/my_flutter_app_icons.dart';

class Loading extends StatelessWidget {
  Loading({
    Key key
  }) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Icon(MyFlutterApp.spin6),
    );
  }
}
