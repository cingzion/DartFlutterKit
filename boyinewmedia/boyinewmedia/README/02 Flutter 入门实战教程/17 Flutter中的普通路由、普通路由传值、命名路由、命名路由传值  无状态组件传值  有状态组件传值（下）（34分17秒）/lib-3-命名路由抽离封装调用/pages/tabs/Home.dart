import 'package:flutter/material.dart';

//import '../Search.dart';

// 自定义有状态的组件
class HomePage extends StatefulWidget {
  HomePage({Key key}):super(key: key);

  _HomePageState createState() => _HomePageState();
}

/*
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    return Container(
      child: Text("我是首页组件"),
    );
  }
}
*/

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到搜索页面"),
          onPressed:(){
            // 路由跳转, 也中页面跳转
            /*Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SearchPage(),
              )
            );*/

            // 使用命名路由跳转
            Navigator.pushNamed(context, '/search', arguments: {
              "id": 123
            });
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ]
    );
  }
}