import 'package:flutter/material.dart';
import "res/listData.dart";
import 'res/listData.dart';

void main() => runApp(RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              "BoYiNewMedia",
          ),
        ),
        body: HomePage(),
      ),
    );
  }
}


/*
一、Flutter 中自定义有状态组件
  在 Flutter 中自定义组件其实就是一个类，这个类需要继承 StatelessWidget/StatefulWidget。
  StatelessWidget 是无状态组件，状态不可变的 widget
  StatefulWidget 是有状态组件，持有的状态可能在 widget 生命周期改变。通俗的讲：如果我
  们想改变页面中的数据的话这个时候就需要用到 StatefulWidget

 */

// StatelessWidget 无状态组件
/*
class HomePage extends StatelessWidget{
  int countNum = 1;

  @override
  Widget build(BuildContext context){
    return Column(
     children: <Widget>[
       SizedBox(height: 200),
       Text("HiHao: ${this.countNum}"),
       SizedBox(height: 200),
       RaisedButton(
         child: Text("按钮"),
         onPressed: () {
            this.countNum++;
            print(this.countNum);
         },
       ),
     ],
    );
  }
}*/

// 自定义 StatefulWidget 有状态组件
/*
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<HomePage> {
  int countNum = 0;

  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        SizedBox(height: 200),
        Chip(
          label: Text("你好: ${this.countNum}"),
        ),
        SizedBox(height: 20),
        RaisedButton(
          child: Text("按钮"),
          onPressed: () => {
            setState((){ // 有状态组件才有这个方法
              this.countNum++;
            })
          }
        ),

      ],
    );
  }
}
*/



class HomePage extends StatefulWidget {
  HomePage({Key key}):super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 定义一个List
  List list = new List();




  @override
  Widget build(BuildContext context){
    return ListView(
      children: <Widget>[
        Column(
          children: this.list.map((item){
            return ListTile(
              title: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20),
        RaisedButton(
          child: Text("按钮"),
          onPressed: () {
              setState((){
                this.list.add("新增数据1");
                this.list.add("新增数据2");
              });
          },
        ),
      ],
    );
  }
}



