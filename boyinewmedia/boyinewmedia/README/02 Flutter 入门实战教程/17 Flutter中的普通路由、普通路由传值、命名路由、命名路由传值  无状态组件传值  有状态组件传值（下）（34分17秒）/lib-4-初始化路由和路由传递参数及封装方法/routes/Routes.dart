import 'package:flutter/material.dart';

// 导入组件
import '../pages/Tabs.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/Produce.dart';
import '../pages/ProductInfo.dart';

// 配置的路由
final routes = {
  '/': (context) => Tabs(),
  '/form': (context)=> FormPage(),
  '/product': (context, {argument}) => ProducePage(),                     // 不需要传值
  '/productInfo': (context, {arguments}) => ProductInfoPage(arguments: arguments),                     // 不需要传值
  '/search': (context, {arguments}) => SearchPage(arguments: arguments), // 需要传值
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