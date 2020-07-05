import 'package:flutter/material.dart';
import "res/listData.dart";

void main() => runApp(RootApp());


class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
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


class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return LaYouContainer();
  }
}


// 使用 GridView.count 组件
class LaYouContainer extends StatelessWidget {

  List<Widget> _getListData(){
    List<Widget> list = new List<Widget>();
    for(var i = 0; i < 20; i++){
      list.add(
          Container(
            alignment: Alignment.center,
            child: Text(
              "这是第 $i 条数据",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            color: Colors.blue,
            height: 300, // 设置高是无效
          )
      );
    }
    return list;
  }

  // 使用 JSON 的数据渲染
  List<Widget> _getListDataRes(){
    var tempList = listData.map((value) {
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(value['imageUrl']),
            SizedBox(height: 8), // 让 Image 和 Text 之前有一个距离
            Text(
                value['title'],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(233, 233, 233, 0.9),
            width: 2,
          ),
        ),
      );
    });

    return tempList.toList();
  }


  // GridView.count 静态网格
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10.0, // 左右有20的距离
      mainAxisSpacing: 5.0,  // 上下有20的距离
      padding: EdgeInsets.all(10), // 设置 padding 内边距
      crossAxisCount: 2,      // 显示多少列
      // childAspectRatio: 0.7,  // 设置宽和高度的比例, 宽度除以高度等于0.7
      children: this._getListDataRes(),
    );
  }
}