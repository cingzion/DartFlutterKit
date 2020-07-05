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

/*class LayoutContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return IconContainer(Icons.search, color: Colors.black);
  }
}*/

// 使用  Row 组件
/*class LayoutContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconContainer(Icons.home, color: Colors.green),
        IconContainer(Icons.search, color: Colors.red),
        IconContainer(Icons.select_all, color: Colors.pink),
      ]
    );
  }
}*/

// 使用 Column
/*class LayoutContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      height: 600.0,
      width: 400.0,
      color: Colors.pink,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            IconContainer(Icons.home, color: Colors.green),
            IconContainer(Icons.search, color: Colors.red),
            IconContainer(Icons.select_all, color: Colors.blue),
          ]
      ),
    );
  }
}*/


class IconContainer extends StatelessWidget {
  double size = 32.0;
  Color color = Colors.red;
  IconData icon;
  IconContainer(this.icon, {this.color, this.size});


  @override
  Widget build(BuildContext context){
    return Container(
      height: 100,
      width: 100,
      color: this.color,
      child: Center(
        child: Icon( this.icon,  size: this.size, color: Colors.white),
      ),
    );
  }
}


// 使用 Expanded  相当于 Flex 布局
class LayoutContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: IconContainer(Icons.home, color: Colors.orange),
          ),
          IconContainer(Icons.search, color: Colors.blue),
        ]
    );
  }
}