import 'package:flutter/material.dart';

// 自定义有状态的组件
class HomePage extends StatefulWidget {
  HomePage({Key key}):super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    return Container(
      child: Text("我是首页组件"),
    );
  }
}