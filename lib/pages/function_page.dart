import 'package:flutter/material.dart';
import 'package:flutterplayground/common_pages/colors.dart';


class FunctionPage extends StatefulWidget {
  @override
  _FunctionPageState createState() => _FunctionPageState();
}

class _FunctionPageState extends State<FunctionPage> {

  List<int> indexs = List.generate(10, (index) {
    return index;
  });
  static String modifyPhoneNum = 'Provider';
  static String setPassword = '';
  static String newNotification = '';
  static String feedBack = '';
  static String aboutApp = '';
  static String logout = '';
  List<String> titles = [
    modifyPhoneNum,
    setPassword,
    newNotification,
    feedBack,
    aboutApp,
    logout
  ];
  @override
  Widget build(BuildContext context) {
    var divider = Divider(
      color: MColor.greyCC,
      indent: 20,
      endIndent: 20,
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("功能展示"),
      ),
      body: new Container(
        child:ListView.separated(
          padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
          itemBuilder: _cellForRow,
          separatorBuilder: (context, index) {
            return divider;
          },
          itemCount: titles.length,
        )
      ),
    );
  }
  Widget _cellForRow(BuildContext context, int index) {

    return GestureDetector(
      onTap: () {
        String title = titles[index];
        print('onTap Set' + title);
        if (title == aboutApp) {

        } else if (title == newNotification) {

        } else if (title == logout) {

        }else if(title == feedBack){

        }
      },
      child: Container(
        height: 56,
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                titles[index],
              ),
            ),
//            Container(
//              alignment: Alignment.centerRight,
//              child: localImg(
//                'assets/mine/arrow_right.svg',
//                width: 30,
//                height: 30,
//              ),
//            ),
          ],
        ),
      ),
    );
  }
}
