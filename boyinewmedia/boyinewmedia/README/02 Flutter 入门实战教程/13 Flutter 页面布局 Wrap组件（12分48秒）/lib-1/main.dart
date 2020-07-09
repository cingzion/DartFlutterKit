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
        body: LayoutContainer(),
      ),
    );
  }
}


/*
一、Flutter RaisedButton 定义一个按钮
    Flutter 中通过 RaisedButton 定义一个按钮。RaisedButton 里面有很多的参数，这一讲我们只
    是简单的进行使用。
    return RaisedButton(
    child: Text('女装'), textColor: Theme.of(context).accentColor, onPressed: (){
    }, );
    二、Wrap 组件
    Wrap 可以实现流布局，单行的 Wrap 跟 Row 表现几乎一致，单列的 Wrap 则跟 Row 表
    现几乎一致。但 Row 与 Column 都是单行单列的，Wrap 则突破了这个限制，mainAxis 上空
    间不足时，则向 crossAxis 上去扩展显示。
 */

class LayoutContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return RaisedBtn("第一季");
  }
}

// 定义一个 button 的组件
class RaisedBtn extends StatelessWidget {
  final String text;
  const RaisedBtn(this.text, {Key key}):super(key: key);
  @override
  Widget build(BuildContext context){
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: () => {

      },
    );
  }
}