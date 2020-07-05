import 'package:flutter/material.dart';
import "res/listData.dart";

void main() => runApp(RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              "博艺新媒体",
          ),
        ),
        body: LayoutContainer(),
      ),
    );
  }
}


// 使用 Expanded  相当于 Flex 布局
class LayoutContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 180,
                color: Colors.pinkAccent,
                child: Text("你好Flutter"),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: 180,
                child: Image.network("https://www.itying.com/images/flutter/1.png", fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 180,
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 85,
                      child: Image.network("https://www.itying.com/images/flutter/3.png", fit: BoxFit.cover)
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 85,
                        child: Image.network("https://www.itying.com/images/flutter/4.png", fit: BoxFit.cover)
                    ),
                  ]
                ),
              ),
            ),
          ]
        ),
      ],
    );
  }
}