import 'dart:math';

///
///   function is object
/// 
void main(){
    powSample() ;
    int value = 5;
    // String text = (value){return '$value is a very nice number.';}; error
    final text = (value){return '$value is a very nice number.';};
    print(text);
    //print(text()); error
    print(text(value));
//匿名函數
    final text2 = (){return '$value is a very nice number.';};
    print(text2());

    final text3 = (){print("hi test");};
    print(text3()); //print(text2());無返回值

    //箭頭表示
    //final text5  = ()=> 123;
    text5()=> 123;
    print(text5());

    //可以取得外部變數值 $value
    //final text6 = ()=> '$value';
    text6()=> '$value';
    print(text6());

    // final text = ()=>'$value2'; //找不到變數
    // int value2 = 4;

}

String abc(){

  return "bb" ;
}

// String abc1(){

//   return 1 ; //return error
// }

String abc1(){

  return 1.toString() ;
}


void powSample() {
  double base = 2;
  double exponent = 3;

  // double result = pow(base, exponent);
  num result = pow(base, exponent);

  print('$base 的 $exponent 次方等于 $result');
}

num powSample2() {
  int base = 2;
  int exponent = 3;

  // double result = pow(base, exponent);
  num result = pow(base, exponent);

  print('$base 的 $exponent 次方等于 $result');
  return result ;
}

