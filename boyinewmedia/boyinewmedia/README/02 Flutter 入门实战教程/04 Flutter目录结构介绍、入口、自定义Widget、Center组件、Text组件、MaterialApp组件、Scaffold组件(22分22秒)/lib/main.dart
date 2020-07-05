// 导包 material 的快捷键：输入 importM 按 Tab 快捷键
import 'package:flutter/material.dart';

void main() {


  /**
   * 实例化 Center 的组件
   *    传入一个 child 里面要放一个文本
   *
   *
   *  new Center() 此时可以省略 new 直接写 Center();
   *
   */
 /* runApp(new Center(
    child: new Text(
      "你好 Flutter",  // 第一个参数为文本内容
      textDirection: TextDirection.ltr, // 文本的显示方式，从左到右
    )
  ));*/

  /*runApp( Center(
      child: Text(
        "你好 Flutter",  // 第一个参数为文本内容
        textDirection: TextDirection.ltr, // 文本的显示方式，从左到右
      )
  ));*/

  runApp(MyApp());

}

// 自定义组件
/*
在 Flutter 中自定义组件其实就是一个类，这个类需要继承 StatelessWidget/StatefulWidget
前期我们都继承 StatelessWidget。后期给大家讲 StatefulWidget 的使用。
StatelessWidget 是无状态组件，状态不可变的 widget
StatefulWidget 是有状态组件，持有的状态可能在 widget 生命周期改变


  const Text(
    this.data, {
    Key key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
  })
 */
class MyApp extends StatelessWidget {
 // 实现 StatelessElement 的方法
  @override
  Widget build(BuildContext context){
//    return HomeContent();
    return HeaderMaterialApp();
  }

}

// 自定义导航组件
/*
件用 MaterialApp 和 Scaffold两个组件装饰 App
  1、MaterialApp
  MaterialApp 是一个方便的 Widget，它封装了应用程序实现 Material Design 所需要的
  一些 Widget。一般作为顶层 widget 使用。
    常用的属性：
      home（主页）
      title（标题）
      color（颜色）
      theme（主题）
      routes（路由）
      ...


  2、Scaffold
      Scaffold 是 Material Design 布局结构的基本实现。此类提供了用于显示 drawer、
      snackbar 和底部 sheet 的 API。
      Scaffold 有下面几个主要属性：
      appBar - 显示在界面顶部的一个 AppBar。
      body - 当前界面所显示的主要内容 Widget。
      drawer - 抽屉菜单控件。
      ...


 */
class HeaderMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp( //  是一个方便的 Widget，它封装了应用程序实现 Material Design 所需要的 一些 Widget。一般作为顶层 widget 使用。
      home: Scaffold(   //  Scaffold 是 Material Design 布局结构的基本实现。此类提供了用于显示 drawer、
        appBar: AppBar(
          title: Text(
            '博艺新媒体'
          ),
        ),
        body: HomeContent(),  // 内容区域
      ),
      theme: ThemeData(       // 主题颜色
          primarySwatch: Colors.yellow
      ),
    );
  }

}

// 自定内容义组件
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Center(
        child: Text(
          "你好 Flutter!!!",  // 第一个参数为文本内容
          textDirection: TextDirection.ltr, // 文本的显示方式，从左到右
          style: TextStyle(
            fontSize: 40.0,        // 字体的大小 所有的样式的值都是 Double 类型
            color: Colors.red,  // 第一种写法，字体颜色
            // color: Color.fromRGBO(244, 233, 121, 0.5),  // 第二种写法，字体颜色
          ), // 样式
        )
    );
  }
}
