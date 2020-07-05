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

class LayoutContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return IconContainer(Icons.search, color: Colors.black);
  }
}

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