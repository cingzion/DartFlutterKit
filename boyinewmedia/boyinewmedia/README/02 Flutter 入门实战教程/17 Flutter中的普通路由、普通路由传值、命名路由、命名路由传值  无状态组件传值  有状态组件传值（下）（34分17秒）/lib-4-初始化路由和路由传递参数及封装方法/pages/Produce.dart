import 'package:flutter/material.dart';

// 定义一个有状态的组件
class ProducePage extends StatefulWidget {
  ProducePage({Key key}): super(key: key);

  _ProducePageState createState() => _ProducePageState();
}

class _ProducePageState extends State<ProducePage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("商品页面"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton( // 定义一个按钮
            child: Text("跳转到商品详情"),
            onPressed: (){
              // 跳转路由
              Navigator.pushNamed(context, '/productInfo', arguments: {
                "pid": 45688,
              });
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),

        ],
      ),
    );
  }

}