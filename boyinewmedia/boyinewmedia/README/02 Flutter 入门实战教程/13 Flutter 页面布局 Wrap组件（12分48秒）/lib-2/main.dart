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


/*
Wrap组件
  direction 主轴的方向，默认水平
  alignment 主轴的对其方式
  spacing 主轴方向上的间距
  textDirection 文本方向
  verticalDirection 定义了 children 摆放顺序，默认是 down，见
  Flex 相关属性介绍。
  runAlignment run 的对齐方式。run 可以理解为新的行或者
  列，如果是水平方向布局的话，run 可以理解
  为新的一行
  runSpacing run 的间距
 */

// 横向显示
/*class LayoutContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    // return RaisedBtn("第一季");
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      // alignment: WrapAlignment.spaceEvenly,
      children: <Widget>[
        RaisedBtn("第1季"),
        RaisedBtn("第2季"),
        RaisedBtn("第3季"),
        RaisedBtn("第4季"),
        RaisedBtn("第5季"),
        RaisedBtn("第6季"),
        RaisedBtn("第7季"),
        RaisedBtn("第8季"),
        RaisedBtn("第9季"),
        RaisedBtn("第10季"),
        RaisedBtn("第11季"),
        RaisedBtn("第12季"),
        RaisedBtn("第13季"),
        RaisedBtn("第14季"),
        RaisedBtn("第15季"),
        RaisedBtn("第16季"),
        RaisedBtn("第17季"),
        RaisedBtn("第18季"),
      ],
    );
  }
}*/

// 纵向显示
class LayoutContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    // return RaisedBtn("第一季");
    return Container(
      height: 600,
      width: 400,
      color: Colors.pink,
      padding: EdgeInsets.all(10),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        direction: Axis.vertical,
        // alignment: WrapAlignment.spaceEvenly,
        // runAlignment: WrapAlignment.spaceAround,
        children: <Widget>[
          RaisedBtn("第1季"),
          RaisedBtn("第2季"),
          RaisedBtn("第3季"),
          RaisedBtn("第4季"),
          RaisedBtn("第5季"),
          RaisedBtn("第6季"),
          RaisedBtn("第7季"),
          RaisedBtn("第8季"),
          RaisedBtn("第9季"),
          RaisedBtn("第10季"),
          RaisedBtn("第11季"),
          RaisedBtn("第12季"),
          RaisedBtn("第13季"),
          RaisedBtn("第14季"),
          RaisedBtn("第15季asfdsa"),
          RaisedBtn("第16季ffvv"),
          RaisedBtn("第17季"),
          RaisedBtn("第18季"),
        ],
      ),
    );
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