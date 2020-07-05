import 'package:flutter/material.dart';

void main() => runApp(RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BoYiNewMedia"),
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
/*class HomeContent extends StatelessWidget {
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
}*/

/// 增加一个图标
/*class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.all(10), // 设置 padding
        children: <Widget>[
          ListTile( // 可以指定列表的标题
            leading: Icon( /// 增加图标
                Icons.settings,       // 设置的图标，标志
                color: Colors.green,  // 设置图标颜色
                size: 60,             // 设置图标大小
            ),
            title: Text(
              "海马7X预售13-15万元 或7月份正式上市",
              style: TextStyle(               // 设置字体的属性
                fontSize: 18,                 // 设置字体的大小
                fontWeight: FontWeight.w600,  // 设置字段加粗
                color: Colors.red,            // 设置字体颜色
              ),
            ), //  这是一级标题， 加一个标题
            subtitle: Text("又拿“安全”说事！印度宣布禁用59款中国应用，包括TikTo..."), // 这是二级标题
            trailing: Icon( /// 后面加一个图标
              Icons.home,
            ),

          ),
          ListTile( // 可以指定列表的标题
            leading: Icon( /// 增加图标
              Icons.home,       // 设置的图标，标志
              color: Colors.green,  // 设置图标颜色
              size: 60,             // 设置图标大小
            ),
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
            leading: Icon( /// 增加图标
              Icons.pages,       // 设置的图标，标志
              color: Colors.green,  // 设置图标颜色
              size: 60,             // 设置图标大小
            ),
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
        ]
    );
  }
}*/

/// TODO: 设置一个图片为图标-垂直列表
/*class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.all(10), // 设置 padding
        children: <Widget>[
          ListTile(
            // 可以指定列表的标题
            leading: Image.network(
              // 设置图片
              "https://pics7.baidu.com/feed/2fdda3cc7cd98d1091ef6b4f92995d087aec90c6.jpeg?token=4ee4d8c8d65e1043f288eacfa0bae4ec",
              height: 40,
              width: 40,
            ),
            title: Text(
              "海马7X预售13-15万元 或7月份正",
              style: TextStyle(
                // 设置字体的属性
                fontSize: 18, // 设置字体的大小
                fontWeight: FontWeight.w600, // 设置字段加粗
                color: Colors.red, // 设置字体颜色
              ),
            ), //  这是一级标题， 加一个标题
            subtitle: Text("又拿“安全”说事！印度宣布禁用59款中国应用，包括TikTo..."), // 这是二级标题
          ),
          ListTile(
            // 可以指定列表的标题
            leading: Image.network(
              // 设置图片
              "https://pics5.baidu.com/feed/0824ab18972bd4074cad367cc82f7b570eb30972.jpeg?token=2b8baca6c891b6076b9fca93846e4d5e",
              height: 40,
              width: 40,
            ),
            title: Text(
              "福特发布全新Mustang Mach 1标识",
              style: TextStyle(
                // 设置字体的属性
                fontSize: 18, // 设置字体的大小
                fontWeight: FontWeight.w600, // 设置字段加粗
                color: Colors.red, // 设置字体颜色
              ),
            ), //  这是一级标题， 加一个标题
            subtitle: Text("又拿“安全”说事！印度宣布禁用59款中国应用，包括TikTo..."), // 这是二级标题
          ),
          ListTile(
            leading: Image.network(
              "https://feed-image.baidu.com/0/pic/71cecc3cfd65ab604231293f14b35e8e.jpg",
              height: 40,
              width: 40,
            ),
            title: Text(
              "十年经典再现！沉浸式还原剧情，捕",
            ),
            subtitle: Text("国际刑警组织拒绝协助逮捕特朗普"),
          ),
          ListTile(
            title: Text(
              "十年经典再现！沉浸式还原剧情，捕",
            ),
            subtitle: Text("国际刑警组织拒绝协助逮捕特朗普"),
            trailing: Image.network(
              "https://feed-image.baidu.com/0/pic/71cecc3cfd65ab604231293f14b35e8e.jpg",
              height: 40,
              width: 40,
            ),
          ),
        ]);
  }
}*/

// 放入其它组件
class HomeContentA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.all(10), // 设置padding
        children: <Widget>[
          Container(
            child: Text(
              "我是一个标题",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            height: 60,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),
          Image.network("http://img.pconline.com.cn/images/upload/upc/tx/wallpaper/1308/15/c5/24496183_1376533418350.jpg"), // 设置图片
          Container(
            child: Text(
                "我是一个标题",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                ),
            ),
            height: 60,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),
          Image.network("http://b.hiphotos.baidu.com/zhidao/pic/item/a2cc7cd98d1001e9b0d7d104ba0e7bec55e797d6.jpg"), // 设置图片
          Container(
            child: Text(
              "我是一个标题",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            height: 60,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),
          Image.network("http://img.zcool.cn/community/03727105a93c5c8a8012192316469bd.jpg"), // 设置图片
          Container(
            child: Text(
              "我是一个标题",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            height: 60,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),
          Image.network("http://img.pconline.com.cn/images/upload/upc/tx/softbbs/1005/11/c0/3833516_1273520945764_1024x1024soft.jpg"), // 设置图片
          Container(
            child: Text(
              "我是一个标题",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            height: 60,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),
          Image.network("http://img.pconline.com.cn/images/upload/upc/tx/wallpaper/1307/10/c6/23169175_1373445345248.jpg"), // 设置图片
        ]);
  }
}

// 使用本地图片
/*
Image.asset(
    'images/a.jpeg',     // 加载本地图片
    fit: BoxFit.cover,   // 铺满
)
 */
class HomeContentB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.all(10), // 设置padding
        children: <Widget>[
          Container(
            child: Text(
              "我是一个标题",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            height: 60,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),
          Image.asset("images/a1.jpg"), // 设置图片
          Container(
            child: Text(
              "我是一个标题",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            height: 60,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),
          Image.asset("images/a2.jpg"), // 设置图片
          Container(
            child: Text(
              "我是一个标题",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            height: 60,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),
          Image.asset("images/a3.jpg"), // 设置图片
          Container(
            child: Text(
              "我是一个标题",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            height: 60,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),
          Image.asset("images/a4.jpg"), // 设置图片
          Container(
            child: Text(
              "我是一个标题",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            height: 60,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),
          Image.asset("images/a5.jpg"), // 设置图片
        ]);
  }
}


// TODO: 水平列表
class HomeContentC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView(
          scrollDirection: Axis.horizontal, // 水平方式
          children: <Widget>[
            Container(
              height: 180,
              width: 180,
              color: Colors.deepOrange,
            ),
            Container(
              height: 180,
              width: 180,
              color: Colors.blue,
              child: ListView(
                children: <Widget>[
                  Image.network("http://img.pconline.com.cn/images/upload/upc/tx/softbbs/1005/11/c0/3833516_1273520945764_1024x1024soft.jpg"),
                  Text("我是一个文本"),
                ]
              ),
            ),
            Container(
              height: 180,
              width: 180,
              color: Colors.orange,
            ),
            Container(
              height: 180,
              width: 180,
              color: Colors.deepPurpleAccent,
            ),

          ]
      ),
    );

  }
}


//  实现一个列表
/*class HomeContent extends StatelessWidget {
  // 自定义一个方法
  List<Widget> _getData(){
    return [
      ListTile(
        title: Text("我是一个列表"),
      ),
      ListTile(
        title: Text("我是一个列表"),
      ),
      ListTile(
        title: Text("我是一个列表"),
      ),
    ];
  }

  @override
  Widget build(BuildContext context){
    return ListView(
      children: this._getData()
    );
  }
}*/

// 模拟20条数据-动态列表
class HomeContent extends StatelessWidget {
  // 自定义一个方法
  List<Widget> _getData(){

    List<Widget> list = new List<Widget>();

    for(int i = 0; i < 20; i++){
      list.add(ListTile(
        title: Text("我是一个$i列表"),
      ));
    }

    return list;
  }

  @override
  Widget build(BuildContext context){
    return ListView(
        children: this._getData()
    );
  }
}