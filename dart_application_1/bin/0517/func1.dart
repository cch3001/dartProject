void main(List<String> agrs){

  //functiom

  /*
  return type functionname(datatype para1,datatpye para2,....){
    功能
    return 運算結果 (要跟 returntype 對應)
  }


  */

  // bool isNOble(int atomicNUmber){
  //   var nobleGases = [] ;
  //   return nobleGases[atomicNUmber] != null ;
  // }

  print((x)=>{(x+5)}) ;

  //使用function 呼叫 執行函式名稱 functionName(參數1,參數2,參數3 )
  // isNOble ;//不會執行函式
  // isNOble(12);


  //arow function: returnTpye functionName(datatype para1,datatpye para2,....) => 1.功能動作
  printMsg()=>print('hello') ;
  void printMsg1(){
    print('hello') ;
  }

  //void
  //呼叫函式
  printMsg() ; 

  int test(){
    return 123 ;
  }

//  test_a(); //error function 尚未定義 無法執行
  int test_a () => 123 ;
  test_a();

  //無參數(輸入),無回傳(輸出),函式(黑盒子): print()

  void printM(){
    print('hello');
  }
  printM1(){//ignore void
    print('hello');
  }
  printM2() =>  print('hello');

  Function printM3 = ()=>print('hello M3 ');

 print('printM3-----------------') ;
  printM3();
  printM3 = printM;

  printM3();
  print('printM3-----------------') ;



  //有參數，無回傳值
  void fun1(String s1){
    print('s1: $s1') ;
  }
  fun1('hihi');

  fun2(String s1) => print('s1: $s1') ;
  fun2('world');
  
  //有參數回傳值
  int add(int a,int b){
    return a+b ;
  }
  int add1(int a,int b) => a+b ;
  var r = add1(3,5);
  print('r: $r');
}