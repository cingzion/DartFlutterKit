import 'package:flutter/material.dart';

// 导入组件
import '../pages/Tabs.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';

// 配置的路由
final routes = {
  '/': (context, {arguments}) => Tabs(),
  '/form': (context, {arguments})=> FormPage(),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
};


var onGenerateRoute = (RouteSettings settings){
  // 统一处理
  final String name = settings.name;
  print(name);

  final Function pageContentBuilder = routes[name];

  if(pageContentBuilder != null){
    if(settings.arguments != null){
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context, arguments: settings.arguments),
      );
      return route;
    }else{
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context)
      );
      return route;
    }
  }
};