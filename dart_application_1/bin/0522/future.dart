import 'dart:math';

void main(List<String> args) {
  int getInt() {
    print("開始執行 gentInt");
    Random rad = Random();
    return rad.nextInt(100);
  }

  print("main start .....");

  //future的宣告方式
  //future 針對成功的處理方法 then
  //取得 future event執行結果
  Future(getInt).then((value) => print(value));

  Future.value(20).then((v)=>print(v)) ;//value() 優先權較一般事件還高

  //如何定義事件失敗後要執行的動作
  /*
  Future(getInt)
  .then((value) => print(value)) //執行結果產生 一個 future
  .then((value) => print("async done"))//前一個動作完成沒有回傳值 value:void
  .catchError((e) => print(e)) ;
  */
  /*
  Future(getInt)
      .then((value) {
        print(value) ;
        return value ;
      }) //執行結果產生 一個 future
      .then((result) {
        print('result: $result');
        print("async done") ;
      })//前一個動作完成沒有回傳值 value:void
      .catchError((e) => print(e)) ;
  */
  //Future 串列
  //如何定義事件失敗後要執行的動作 人造產生error throw
  /*
  Future(getInt)
      .then((value) => throw "async event failed") //執行結果產生 一個 future
      .then((value) => print("async done"))//前一個動作完成沒有回傳值 value:void
      .catchError((e) => print(e)) ;
  */

  //錯誤捕捉在定義 then (onErrorL callback function)
  Future.delayed(Duration(seconds: 2),() => throw AssertionError("assert error!"))
  .then((value) => null, onError: (e) => print(e));
  
  //whenComplete :無論事件執行成功或失敗都會執行的動作
  //錯誤捕捉在定義 then (onErrorL callback function)
  Future.delayed(Duration(seconds: 2),() => throw AssertionError("assert error!"))
      .then((value) => null, onError: (e) => print(e))
      .whenComplete(()=>print("event complete!"));  
  
  print("main end   .....");
}
