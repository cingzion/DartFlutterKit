import 'package:flutter/material.dart';

/*import 'pages/Tabs.dart';
import 'pages/Form.dart';
import 'pages/Search.dart';
import 'routes/Routes.dart';
*/

// 路由
import 'routes/Routes.dart';

void main() => runApp(RootApp());

class RootApp extends StatelessWidget {
  /*final routes = {
    '/form': (context) => FormPage(),
    '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  };*/


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      // home: Tabs(),
      /*routes: { // 命名路由
        '/form': (context) => FormPage(),
        '/search': (context) => SearchPage(),
      },*/
      // ignore: missing_return
      /*onGenerateRoute: (RouteSettings settings){
        // 统一处理
        final String name = settings.name; // 获取 routes 的 key 值
        final Function pageContentBuilder = this.routes[name]; // 这里的是 routtes的key那一条数据

        if(pageContentBuilder != null){
          if(settings.arguments != null){
            final Route route = MaterialPageRoute( // 这里进行跳转并传参
              builder: (context) => pageContentBuilder(context, arguments: settings.arguments),
            );
            return route;
          }
        }else{
          final Route route = MaterialPageRoute(
            builder: (context) => pageContentBuilder(context),
          );
          return route;
        }
      },*/
      // 初始化路由
      initialRoute: '/', // 初始化的时候加载的路由
      onGenerateRoute: onGenerateRoute,

    );
  }

}




