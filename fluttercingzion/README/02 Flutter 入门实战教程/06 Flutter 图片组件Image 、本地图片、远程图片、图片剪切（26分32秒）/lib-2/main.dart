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

/*class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellow,
          // 第一种方式
          // borderRadius: BorderRadius.all(
          //  Radius.circular(150),
          // ),
          // 第二种方式
          borderRadius: BorderRadius.circular(150),
          image: DecorationImage(
            image: NetworkImage(
              "https://ns-strategy.cdn.bcebos.com/ns-strategy/upload/fc_big_pic/part-00256-564.jpg",
            ),
            fit: BoxFit.cover,
          ),
        )
      ),
    );
  }
}*/


/**
 * ClipOval 组件圆形图片，加载网络图片
 */
/*class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ClipOval(
          child: Image.network(
            "https://pics5.baidu.com/feed/7dd98d1001e93901e3b38de1da87b0e137d1962a.jpeg?token=b1ef2dd67b5982d6695f940df3333d53",
            height: 100,
            width: 100,
            fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}*/

/**
 * 加载本地资源图片
 */
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.asset(
            'images/a.jpeg',     // 加载本地图片
            fit: BoxFit.cover,   // 铺满
        ),
        height: 300, // 图片高度
        width: 300,  // 图片宽度
      ),
    );
  }
}