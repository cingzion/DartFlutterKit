import 'package:flutter/material.dart';

import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';


// TODO：自定义 Tabs 组件 start
class Tabs extends StatefulWidget {
  Tabs({Key key}):super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;


  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterApp"),
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex, // 配置对应的索引值
        onTap: (int index){

          // 改变状态
          setState((){
            this._currentIndex = index;
          });
        },
        iconSize: 36.0,         // 图标的大小
        fixedColor: Colors.red, // 选中的颜色
        type: BottomNavigationBarType.fixed, // 配置底部 tabs 可以有多个按钮
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