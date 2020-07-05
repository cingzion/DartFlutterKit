import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() => runApp(RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BoYiNewMedia"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

// 模拟20条数据-动态列表
/*
class HomeContent extends StatelessWidget {
  // 自定义一个方法
  List<Widget> _getData(){

    List<Widget> list = new List<Widget>();

    for(int i = 0; i < 20; i++){
      list.add(ListTile(
        title: Text("我是一个$i列表"),
      ));
    }

    return list;
  }

  @override
  Widget build(BuildContext context){
    return ListView(
        children: this._getData()
    );
  }
}*/

// 使用一个接口返回过来的数据
class HomeContent extends StatelessWidget {
  // 自定义一个方法
  List<Widget> _getData(){

    var tempList = listData.map((item){
      return ListTile(
        leading: Image.network(item["imageUrl"]),
        title: Text(item["title"]),
        subtitle: Text(item["author"]),
      );
    });

    return tempList.toList();
  }

  List<Widget> _getJDData(){

    var tempList = jdData.map((item){
      return ListTile(
        title: Text(item["Name"]),
        subtitle: Text(item["Classification"]),
      );
    });

    return tempList.toList();
  }

  @override
  Widget build(BuildContext context){
    return ListView(
        children: this._getData()
    );
  }
}
