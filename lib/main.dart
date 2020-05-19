import 'package:flutter/material.dart';
import 'package:flutterplayground/pages/Detail.dart';
import 'package:flutterplayground/pages/firstPage.dart';
import 'package:flutterplayground/pages/secondPage.dart';
import 'package:flutterplayground/pages/thirdPage.dart';
import 'package:flutterplayground/router_config.dart';

void main() =>
    runApp(MaterialApp(
      home: MyHomePage(),
//      routes: routerConfig(),
      routes: <String, WidgetBuilder>{
        "/detail": (BuildContext context) => new Detail("0")
      }
    ));

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new TabBarView(children: <Widget>[
        firstPage(),
        secondPage(),
        thirdPage()
      ],
        controller: controller,

      ),
      bottomNavigationBar: Material(
      color: Colors.cyan,
      child: TabBar(controller: controller, tabs: <Widget>[
        Tab(
          text: "首页",
          icon: Icon(Icons.home),
        ),
        Tab(
          text: "列表",
          icon: Icon(Icons.message),
        ),

        Tab(
          text: "我的",
          icon: Icon(Icons.menu),
        ),
      ],
      ),
    ),);
  }
}
