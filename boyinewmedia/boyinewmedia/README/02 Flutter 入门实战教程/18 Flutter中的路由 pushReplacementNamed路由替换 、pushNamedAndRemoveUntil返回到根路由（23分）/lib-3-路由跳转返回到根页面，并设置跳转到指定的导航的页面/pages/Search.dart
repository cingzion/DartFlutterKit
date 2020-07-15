import 'package:flutter/material.dart';

// 无状态的组件
class SearchPage extends StatelessWidget {
  final arguments;
  // 构造函数
  SearchPage({this.arguments});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索页面"),
      ),
      body: Text("搜索页面内容区域 ${arguments != null ? arguments['id'] : '0'}"),
    );
  }
}