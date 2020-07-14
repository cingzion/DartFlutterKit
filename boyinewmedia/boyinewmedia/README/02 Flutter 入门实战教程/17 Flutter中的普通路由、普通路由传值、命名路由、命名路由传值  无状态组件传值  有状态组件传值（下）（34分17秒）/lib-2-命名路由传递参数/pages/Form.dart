import 'package:flutter/material.dart';


class FormPage extends StatelessWidget {
  String title;

  // 构造函数
  FormPage({this.title="表单"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text("返回"),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        // title: Text("表单页面"),
        title: Text(this.title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("我是表单页面")
          ),
          ListTile(
            title: Text("我是表单页面")
          ),
          ListTile(
            title: Text("我是表单页面")
          ),
          ListTile(
            title: Text("我是表单页面")
          ),
          ListTile(
            title: Text("我是表单页面")
          ),
          ListTile(
            title: Text("我是表单页面")
          ),
          ListTile(
            title: Text("我是表单页面")
          ),
          ListTile(
            title: Text("我是表单页面")
          ),
        ]
      ),
    );
  }
}