import 'package:flutter/material.dart';

void main() => runApp(RootApp());


/*
BottomNavigationBar 常见的属性
  属性名 说明
  items List<BottomNavigationBarItem> 底部导航
  条按钮集合
  iconSize icon
  currentIndex 默认选中第几个
  onTap 选中变化回调函数
  fixedColor 选中的颜色
  type BottomNavigationBarType.fixed
  BottomNavigationBarType.shifting
 */


class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Tabs(),
    );
  }

}

// TODO：自定义 Tabs 组件 start
class Tabs extends StatefulWidget{
  // 构造方法
  Tabs({Key key}) : super(key: key);

  _TabaState createState() => _TabaState();

}

class _TabaState extends State<Tabs>{
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("BOYIENEWMEDIA"),
      ),
      body: Text("tabBar"),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index){
          print(index);
          setState((){
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("首页"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("分类"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("设置"),
          ),
        ],
      ),
    );
  }

}
// TODO：自定义 Tabs 组件 end




