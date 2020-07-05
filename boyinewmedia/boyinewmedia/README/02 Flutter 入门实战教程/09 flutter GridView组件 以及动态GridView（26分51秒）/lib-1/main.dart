import 'package:flutter/material.dart';
void main() => runApp(RootApp());


class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BoYiNewMedia"),
        ),
        body: HomeContent(),
      ),
    );
  }
}


class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return LaYouContainer();
  }
}


// 使用 GridView.count 组件
/*
GridView.count
{
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry padding,
    @required int crossAxisCount,
    double mainAxisSpacing = 0.0,
    double crossAxisSpacing = 0.0,
    double childAspectRatio = 1.0,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double cacheExtent,
    List<Widget> children = const <Widget>[],
    int semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
  }
 */
class LaYouContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
      ],
    );
  }
}