import 'package:flutter/material.dart';
import "res/listData.dart";

void main() => runApp(RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              "博艺新媒体",
          ),
        ),
        body: LayoutContainer(),
      ),
    );
  }
}


// 使用 Stack
/**
    Stack 表示堆的意思，我们可以用 Stack 或者 Stack 结合 Align 或者 Stack 结合 Positiond 来实
    现页面的定位布局

    alignment 配置所有子元素的显示位置
    children 子组件
    二、Flutter Stack Align
    Stack 组件中结合 Align 组件可以控制每个子元素的显示位置

    属性      说明
    alignment 配置所有子元素的显示位置
    child     子组件
 */
class LayoutContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Center(
      child: Stack(
          alignment: Alignment(1, 0.3),
          children: <Widget>[
            Container(
              height: 400,
              width: 300,
              color: Colors.red,
            ),
            Text(
              "我是一个文本11",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ]
      )
    );
  }
}