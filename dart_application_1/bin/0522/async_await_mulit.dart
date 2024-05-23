import 'dart:io';

void main(){

  doEvent(){
    sleep(const Duration(seconds: 2));
    return "OK";
  }

  f1_async() async{
    print("f1_async start..."); //2
    var r = await doEvent() ; //event 1
    print('f1_async result: $r');
  }

  f2_async () async{
    print("f2_async start..."); //3
    var r = await doEvent(); //event 2
    print('f2_async result $r');
  }

  f1_async();
  f2_async();

  print("main end ....");
}