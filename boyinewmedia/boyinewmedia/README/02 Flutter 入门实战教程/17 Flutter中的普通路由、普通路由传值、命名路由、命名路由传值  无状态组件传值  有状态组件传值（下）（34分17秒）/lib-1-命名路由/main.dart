import 'package:flutter/material.dart';



import 'pages/Tabs.dart';
import 'pages/Form.dart';
import 'pages/Search.dart';


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
      routes: { // 命名路由
        '/form': (context) => FormPage(),
        '/search': (context) => SearchPage(),
      },
    );
  }

}




