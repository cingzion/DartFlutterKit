import 'package:flutter/material.dart';

// 有状态的组件
class ProductInfoPage extends StatefulWidget{
  // 定义一个为 接收 Map 类型的 参数
  final Map arguments;

  ProductInfoPage({Key key, this.arguments}) : super(key: key);

  _ProductInfoPageState createState() => _ProductInfoPageState(arguments: this.arguments);
}

class _ProductInfoPageState extends State<ProductInfoPage>{
  final Map arguments;

  // 构造函数
  _ProductInfoPageState({this.arguments});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("商品详情"),
      ),
      body: Container(
        child: Text("pid=${arguments["pid"]}"),
      )
    );
  }
}
