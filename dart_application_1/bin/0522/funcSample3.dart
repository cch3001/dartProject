void main(List<String> args){

  //主程式要執行的函式
  void execute(var fun){
    //執行參數的函式
    fun(); //test()
  }

  // execute(test) ;

  //參數的函式
  fun(int progress) => print('列印進度 : $progress');

  /* 
   1.條件判斷
   2.迴圈
   3. 函式的宣告
   4. 可選命名參數(可為空=>?)
   5. 函式做為參數傳遞
   6. callback function 回呼函式
  
  */
  //主程式要執行的函式
  printProgress({Function(int)? callback}){
    for(int i=0;i<=10;i++){
      if(callback !=null){
        callback(i);
        print('callback done!');
      }else{
        print('do nothing');
      }
    }
  }

  printProgress();
  printProgress(callback:fun);
  //printProgress(fun);

  //函式:callback 函式


  //中介函式
  perimeter() {
    var pi = 3.14;
    return (int r) => 2 * pi * r;
  }

  printProgress(callback:perimeter());//傳入的是 permeter執行結果
  //or
  var per = perimeter(); //傳入的是函式名稱 (函式宣告)=> (int r) => 2*pi*r 
  printProgress(callback:per);


}