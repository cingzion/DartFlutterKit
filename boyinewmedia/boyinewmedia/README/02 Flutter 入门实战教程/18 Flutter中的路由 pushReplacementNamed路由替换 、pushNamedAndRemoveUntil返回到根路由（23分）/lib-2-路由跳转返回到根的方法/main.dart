import 'package:flutter/material.dart';

// 路由
import 'routes/Routes.dart';

void main() => runApp(RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: '/', // 初始化的时候加载的路由
      onGenerateRoute: onGenerateRoute, // 路由统一处理跳转传递的方法

    );
  }

}




