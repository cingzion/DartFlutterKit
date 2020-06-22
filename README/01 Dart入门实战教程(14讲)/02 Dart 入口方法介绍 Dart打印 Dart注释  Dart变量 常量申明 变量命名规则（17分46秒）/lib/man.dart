// TODO: 第一种写法
/*main(){
  print("你发了");
}*/

// TODO: 第二种写法
/**
 * 表示 main 方法没有返回值
 */
void main() {
  print("你好 Dart!");

  // /**/  多行注释

  /// 单行注释


  // 定义变量
  {
    /**
     * var 可以自动推断类型
     */
    var str = "你好 Dart！";
    print(str);

  // 你好 Dart!
  }

  // 字符串
  {
    String str = "你好Dart！";
    print(str); // 你好Dart！
  }

  // 数字类型
  {
    int myNumb= 123345;
    print(myNumb); // 123345
  }

  // final 常量
  {
    final PI = 3.14159;

    final a = new DateTime.now();
    print(a); // 2020-06-22 17:00:41.518597
  }




}
