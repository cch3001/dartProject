import 'dart:async';
import 'dart:io';

void main(List<String> args){

  // ignore: provide_deprecation_message
 // @deprecated
 @Todo('Dash', 'Implement this function')
  void task1(){
    sleep(Duration(seconds: 2));
    print("this is 1'st task") ;
  }

  task2() => print("this is 2'st task ");

  //task 優先權最高
  //第一種產生 task 方法
  scheduleMicrotask(task1) ;
  scheduleMicrotask(task2) ;

  

  //第2種產生task 方法
  //Future.microtask(task2);

  Future.microtask(() => print("this is 3'st task "));

  //event 事件 優先權較低

  void event1(){
    print("this is 1'st event.");
  }
  event2() => print("This is 2'nd event.");
  //產生 event 方法 Future(event)

  Future(event2);

  Future(event1);

  Future(() => print("This is 3'nd event."));

}


class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
  /*
  
   task  短時間執行 必且期望由系統內部執行
   dart 鼓勵使用者用 event 而不是 task
  
   */
}
