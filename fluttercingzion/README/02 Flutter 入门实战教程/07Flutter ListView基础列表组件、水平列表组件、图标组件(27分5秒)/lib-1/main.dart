import 'package:flutter/material.dart';

void main() => runApp(RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "BoYiNewMedia"
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
/*class HomeContent extends StatelessWidget {
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
}*/

/**
 * Flutter ListView 基础列表组件、水平
    列表组件、图标组件
    scrollDirection Axis Axis.horizontal 水平列表
    Axis.vertical 垂直列表
    padding EdgeInsetsGeometry 内边距
    resolve bool 组件反向排序
    children List<Widget> 列表元素
 */
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10), // 设置 padding
      children: <Widget>[
        ListTile( // 可以指定列表的标题
          title: Text(
              "海马7X预售13-15万元 或7月份正式上市",
              style: TextStyle(               // 设置字体的属性
                fontSize: 18,                 // 设置字体的大小
                fontWeight: FontWeight.w600,  // 设置字段加粗
                color: Colors.red,            // 设置字体颜色
              ),
          ), //  这是一级标题， 加一个标题
          subtitle: Text("又拿“安全”说事！印度宣布禁用59款中国应用，包括TikTo..."), // 这是二级标题
        ),
        ListTile( // 可以指定列表的标题
          title: Text("海马7X预售13-15万元 或7月份正式上市"), //  这是一级标题， 加一个标题
          subtitle: Text("又拿“安全”说事！印度宣布禁用59款中国应用，包括TikTo..."), // 这是二级标题
        ),
        ListTile( // 可以指定列表的标题
          title: Text("海马7X预售13-15万元 或7月份正式上市"), //  这是一级标题， 加一个标题
          subtitle: Text("又拿“安全”说事！印度宣布禁用59款中国应用，包括TikTo..."), // 这是二级标题
        ),
        ListTile( // 可以指定列表的标题
          title: Text("海马7X预售13-15万元 或7月份正式上市"), //  这是一级标题， 加一个标题
          subtitle: Text("又拿“安全”说事！印度宣布禁用59款中国应用，包括TikTo..."), // 这是二级标题
        ),
        ListTile( // 可以指定列表的标题
          title: Text("海马7X预售13-15万元 或7月份正式上市"), //  这是一级标题， 加一个标题
          subtitle: Text("又拿“安全”说事！印度宣布禁用59款中国应用，包括TikTo..."), // 这是二级标题
        ),
        ListTile( // 可以指定列表的标题
          title: Text("海马7X预售13-15万元 或7月份正式上市"), //  这是一级标题， 加一个标题
          subtitle: Text("又拿“安全”说事！印度宣布禁用59款中国应用，包括TikTo..."), // 这是二级标题
        ),
        ListTile( // 可以指定列表的标题
          title: Text("海马7X预售13-15万元 或7月份正式上市"), //  这是一级标题， 加一个标题
          subtitle: Text("又拿“安全”说事！印度宣布禁用59款中国应用，包括TikTo..."), // 这是二级标题
        ),
        ListTile( // 可以指定列表的标题
          title: Text("海马7X预售13-15万元 或7月份正式上市"), //  这是一级标题， 加一个标题
          subtitle: Text("又拿“安全”说事！印度宣布禁用59款中国应用，包括TikTo..."), // 这是二级标题
        ),
        ListTile( // 可以指定列表的标题
          title: Text("海马7X预售13-15万元 或7月份正式上市"), //  这是一级标题， 加一个标题
          subtitle: Text("又拿“安全”说事！印度宣布禁用59款中国应用，包括TikTo..."), // 这是二级标题
        ),
        ListTile( // 可以指定列表的标题
          title: Text("海马7X预售13-15万元 或7月份正式上市"), //  这是一级标题， 加一个标题
          subtitle: Text("又拿“安全”说事！印度宣布禁用59款中国应用，包括TikTo..."), // 这是二级标题
        ),
        ListTile( // 可以指定列表的标题
          title: Text("海马7X预售13-15万元 或7月份正式上市"), //  这是一级标题， 加一个标题
          subtitle: Text("又拿“安全”说事！印度宣布禁用59款中国应用，包括TikTo..."), // 这是二级标题
        ),ListTile( // 可以指定列表的标题
          title: Text("海马7X预售13-15万元 或7月份正式上市"), //  这是一级标题， 加一个标题
          subtitle: Text("又拿“安全”说事！印度宣布禁用59款中国应用，包括TikTo..."), // 这是二级标题
        ),
        ListTile( // 可以指定列表的标题
          title: Text("海马7X预售13-15万元 或7月份正式上市"), //  这是一级标题， 加一个标题
          subtitle: Text("又拿“安全”说事！印度宣布禁用59款中国应用，包括TikTo..."), // 这是二级标题
        ),
        ListTile( // 可以指定列表的标题
          title: Text("海马7X预售13-15万元 或7月份正式上市"), //  这是一级标题， 加一个标题
          subtitle: Text("又拿“安全”说事！印度宣布禁用59款中国应用，包括TikTo..."), // 这是二级标题
        ),
        ListTile( // 可以指定列表的标题
          title: Text("海马7X预售13-15万元 或7月份正式上市"), //  这是一级标题， 加一个标题
          subtitle: Text("又拿“安全”说事！印度宣布禁用59款中国应用，包括TikTo..."), // 这是二级标题
        ),
        ListTile( // 可以指定列表的标题
          title: Text("海马7X预售13-15万元 或7月份正式上市"), //  这是一级标题， 加一个标题
          subtitle: Text("又拿“安全”说事！印度宣布禁用59款中国应用，包括TikTo..."), // 这是二级标题
        ),

      ]
    );
  }
}

