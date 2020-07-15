import 'package:flutter/material.dart';

// 引用 tabs 组件
import '../Tabs.dart';

class RegisterThirdPage extends StatelessWidget{
  const RegisterThirdPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("第二步-验证码"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 40),
          Text("输入验证码完成注册"),
          SizedBox(height: 40),
          RaisedButton(
            child: Text("确定"),
            onPressed: (){
              // Navigator.pushNamed(context, "/registerSecond");

              // 返回到根路由
              // Navigator.of(context).pop();


              // 返回到根
              /*
                 (route) => route == null 以下的意思，就是我先把所有的路由 设置为空，
                 (context) => new Tabs(index: 1) 然后 我再给你返回到指定的路由
               */
              Navigator.of(context).pushAndRemoveUntil(
                new MaterialPageRoute(
                  builder: (context) => new Tabs(index: 2),
                ),
                (route) => route == null,
              );
            }
          ),
        ]
      ),
    );
  }
}