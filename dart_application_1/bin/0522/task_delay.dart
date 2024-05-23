//import 'dart:io';

void main(List<String> args) {
  print("main start... at ${DateTime.now()} ");

  //第1種模式
  //產生一個延遲時間執行的事件
  /*
  Future.delayed(Duration(seconds: 3), () => print("delay 3 sec 1'st event "));

  Future(() => print("2'nd event"));
  */
  //第2種模式
  //若一般事件跟延遲事件同時發生時，一般事件會先被執行
  //產生一個延遲時間執行的一個事件
/*
  Future.delayed(Duration(seconds: 3),
      () => print("delay 3 sec 1'st event at ${DateTime.now()} "));
  Future.delayed(Duration(seconds: 2),
      () => print("delay 3 sec 3'st event at ${DateTime.now()} "));

  Future(() => print("2'nd event at ${DateTime.now()} "));

  print("main end...at ${DateTime.now()} ");
*/
  //第3種模式
  //delay缺點 當前面事件消耗時，會影響預設的延遲時間

/*
  Future.delayed(Duration(seconds: 3),
      () => print("delay 3 sec 1'st event at ${DateTime.now()} "));
  Future((){
    print("2'nd event start at ${DateTime.now()} ");
    sleep(Duration(seconds:5)) ;
    print("2'nd event end at ${DateTime.now()} ");
    
  });

  print("main end at ${DateTime.now()} ");

*/
  //第4種模式 delay + delay
  //相同時間的事件會按產生順序執行
  Future.delayed(Duration(seconds: 3),
      () => print("delay 3 sec 1'st event at ${DateTime.now()} "));
  Future.delayed(Duration(seconds: 5),
      () => print("delay 5 sec 2'st event at ${DateTime.now()} "));

  Future.delayed(Duration(seconds: 5),
      () => print("delay 5 sec 1_1'st event at ${DateTime.now()} "));
  Future.delayed(Duration(seconds: 3),
      () => print("delay 3 sec 2_1'st event at ${DateTime.now()} "));


  print("main end at ${DateTime.now()} ");
}
