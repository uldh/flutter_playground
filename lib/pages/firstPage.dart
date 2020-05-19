import 'package:flutter/material.dart';
import 'package:flutterplayground/common_pages/list.dart';


class firstPage extends StatefulWidget {

  @override
  FirstPageState createState() => new FirstPageState();
}

class FirstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("界面1"),
      ),
      body: new Container(
        child: new list(),
      ),
    );
  }
}
