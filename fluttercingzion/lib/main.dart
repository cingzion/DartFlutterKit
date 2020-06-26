import 'package:flutter/material.dart';

void main() => runApp(HeaderApp());

// 自定义一个头部组件
class HeaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "BoYiNewMedia",
          ),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      )
    );
  }
}

// 自义一个内容组件
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        child: Text(
          "NewMedia",
          overflow: TextOverflow.ellipsis,
          // overflow: TextOverflow.fade,
          maxLines: 1,
          textScaleFactor: 2,
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.red,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.white,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 5.0,
          ),
        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.blue,
            width: 6.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        padding: EdgeInsets.fromLTRB(10, 30, 5, 0),
        margin: EdgeInsets.fromLTRB(10, 30, 5, 0),
        transform: Matrix4.rotationZ(-0.3)

      ),
    );
  }
