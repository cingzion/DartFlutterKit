import 'package:flutter/material.dart'; // 导入一个 material.dart 包

void main() => runApp(HeaderApp());

// 自定义一个头部组件
/**
 * MaterialApp 根主组件
 *
 */
class HeaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //  是一个方便的 Widget，它封装了应用程序实现 Material Design 所需要的 一些 Widget。一般作为顶层 widget 使用。
      home: Scaffold(   //  是一个方便的 Widget，它封装了应用程序实现 Material Design 所需要的 一些 Widget。一般作为顶层 widget 使用。
        appBar: AppBar(
          title: Text(
            "BoYiNewMedia",
          ),
        ),
        body: HomeContent(),  // 内容区域
      ),
      theme: ThemeData(       // 主题颜色
        primarySwatch: Colors.yellow,
      )
    );
  }
}



// 自义一个内容组件
/*
  Container 容器组件，相当于 div 盒子

  Container({
    Key key,
    this.alignment,
    this.padding,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    this.margin,
    this.transform,
    this.child,
    this.clipBehavior = Clip.none,
  })

 */
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Center(      // 内容主件
      child: Container(
        child: Text(
          "我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本",               // 文本
          overflow: TextOverflow.ellipsis,    // 文本溢出 ...
          // overflow: TextOverflow.fade,
          maxLines: 1,                // 显示最大几行
          textScaleFactor: 2,         // 字体放大几倍，这里是方大 2 倍
          textAlign: TextAlign.right, // 文本对齐方式
          style: TextStyle(               // 文本样式
            fontSize: 16.0,               // 文本大小
            color: Colors.red,            // 文本颜色
            fontWeight: FontWeight.w800,  // 设置字体粗细
            fontStyle: FontStyle.italic,  // 设置字体倾斜
            decoration: TextDecoration.lineThrough, // 设置字体的下划线
            decorationColor: Colors.white,                // 设置线的颜色
            decorationStyle: TextDecorationStyle.dashed,  // 设置线的样式
            letterSpacing: 5.0,                           // 设置字的间距


          ),

        ),  // 文本内容
        height: 300.0,              // 设置一个高度
        width: 300.0,               // 设置一个宽度
        decoration: BoxDecoration(  // 设置容器的属性
          color: Colors.yellow,     // 颜色
          border: Border.all(       // 设置边框
            color: Colors.blue,     // 设置边框颜色
            width: 6.0,             // 设置边框的宽度 
          ),
          borderRadius: BorderRadius.all( // 设置边框圆角
            Radius.circular(10),
          ),
        ),
        // padding: EdgeInsets.all(20),                     // 设置内边距
        padding: EdgeInsets.fromLTRB(10, 30, 5, 0),         // 设置4个内边距都不一样
        margin: EdgeInsets.fromLTRB(10, 30, 5, 0),          // 设置外边距
        // transform: Matrix4.translationValues(100, 0, 0), // 位移
        transform: Matrix4.rotationZ(-0.3)                  // 旋转

      ),
    );
  }
}