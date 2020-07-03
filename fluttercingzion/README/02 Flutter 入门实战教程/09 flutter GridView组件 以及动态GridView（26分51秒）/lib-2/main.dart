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
/*
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
}*/

// 循环遍历
class LayoutContent extends StatelessWidget {
  List<Widget> _getListData(){
    List<Widget> list = new List();

    for(int i = 0; i < 20; i++){
      list.add(
        Container(
          alignment: Alignment.center,
          child: Text(
            "这是第 $i 条数据",
            style: TextStyle(
              color: Colors.white, fontSize: 20,
            ),
          ),
          color: Colors.blue,
          height: 400, // 设置 Container 的高度是没有反应的，也是效的,
        )
      );
    }

    return list;

  }

  @override
  Widget build(BuildContext context){
    return GridView.count(        // GridView.count 实现网格布局
        padding: EdgeInsets.all(10),// 让它与 APP 上下左右 有一点距离
        crossAxisSpacing: 20.0,   // 水平子 Widget 之间间距
        mainAxisSpacing: 20.0,    // 上下之间的距离
        crossAxisCount: 2,        // 一行的 Widget 数量
        childAspectRatio: 0.7,    // 子 Widget 宽高比例, 它表示宽度和高度的比例
        children: this._getListData(),
    );
  }
}
