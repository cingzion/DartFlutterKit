import 'package:flutter/material.dart';

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
              Navigator.of(context).pop();
            }
          ),
        ]
      ),
    );
  }
}