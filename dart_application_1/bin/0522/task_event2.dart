import 'dart:math';

void main(List<String> args) {
  int getInt() {
    print("開始執行 gentInt");
    Random rad = Random();
    return rad.nextInt(100);
  }

  //將 getInt做為一般函式執行
  print(getInt());
  print(getInt().runtimeType);

  //將 getint 作為事件執行
  //getint結果值會包覆在 Future中
  Future<int> f = Future(getInt);
  print('Future(getInt): $f');
  print('f.runtimeType: ${f.runtimeType}');

  print("main end.....");

}
