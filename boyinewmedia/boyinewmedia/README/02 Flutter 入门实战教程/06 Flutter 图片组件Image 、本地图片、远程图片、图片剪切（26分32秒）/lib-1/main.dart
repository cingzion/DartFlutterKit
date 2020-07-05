import 'package:flutter/material.dart';

void main() => runApp(RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "博艺新媒体"
          ),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.network(
          "https://ns-strategy.cdn.bcebos.com/ns-strategy/upload/fc_big_pic/part-00057-1387.jpg",
          alignment: Alignment.center,
          //color: Colors.red,
          //colorBlendMode: BlendMode.screen,
          fit: BoxFit.cover,

        ),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellow,
        )
      ),
    );
  }
}