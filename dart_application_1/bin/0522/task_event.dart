import 'dart:math';

void main() {
//指令在 main task event 彼此之間關係
  print('main start....');

  int chk = Random().nextInt(10) ;
  //task 優先大於 event
  if (chk < 5) {
    test();
  } else {
    test2();
  }
  
  print("main end ...");
}

void test() {
  print("run in method test");
  //產生1個任務
  Future.microtask(() => print("this is 1'st task"));
  Future.microtask(() => print("this is 2'st task"));

  //產生1個事件
  Future(() => print("this is 1'st event."));
  Future(() => print("this is 2'st event."));
}

void test2() {
  print("run in method test2");
  //產生1個事件
  Future(() => print("this is 1'st event."));
  Future(() => print("this is 2'st event."));

  //產生1個任務
  Future.microtask(() => print("this is 1'st task"));
  Future.microtask(() => print("this is 2'st task"));
}
