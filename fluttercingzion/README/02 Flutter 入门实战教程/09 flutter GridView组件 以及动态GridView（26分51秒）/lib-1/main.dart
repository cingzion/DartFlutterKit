import 'package:flutter/material.dart';

void main() => runApp(RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BoYiNewMedia"),
        ),
        body: LayoutContent(),
      ),
    );
  }
}

// 自定义 body 里面的数组
/**
 * 使用 GridView 组件
 */
class LayoutContent extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return GridView.count(  // GridView.count 实现网格布局
      crossAxisCount: 3,    // crossAxisSpacing double 水平子 Widget 之间间距
      children: <Widget>[   // <Widget>[ ]
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
      ]
    );
  }
}