import 'dart:math';

void main(List<String> args) {
  //+= -=
  var a = 10;
  var b = 5;
  a += b;
  //a=a+b;
  print('a: $a');
  a -= b;
  //a=a-b;
  print('a: $a');

  //<<, >> 位元 左移跟右移
  //0010 0010<<1 => 0100 0010 >> 1=> 0001

  //&: and  true and true => true
  //|: or true | false => true

  // 允許變數為空
  int? c;
  print('c: $c');
//??= 判斷變數c是否為空,如果c為空: =5
  c ??= 5;
  print('c: $c');

//??= 判斷變數c是否為空,如果c不為空: c為原值
  c ??= 10;
  print('c: $c');

  int i;
  //i ??=5 //error: i不可能為空

  // 允許變數為空
  var bc; //尚未賦值 可為空
  print('bc: $bc');
//??= 判斷變數c是否為空,如果c為空: =5
  b ??= 5;
  print('bc: $bc');

//??= 判斷變數c是否為空,如果c不為空: c為原值
  bc ??= 10;
  print('bc: $bc');

  print("heoo".length);
  print(("heoo" as Object).toString());
  //print(("heoo" as int).toString() ); error

//邏輯運算針對 bool做運算
  bool b1 = true, b2 = false;
  print('b1 && b2: ${b1 && b2}'); //and ,只有兩這者為 true時，結果為true，其他所有狀態為 false
  print('b1 || b2: ${b1 || b2}'); //or ,只有兩這者為 flase時，結果為false，其他所有狀態為 true
  print('b2: $b2'); //反向運算

//?: => 條件判斷 三元運算
//條件描述 ? true 條件成立(對應處理) : false 條件不成立(對應處理)
  var random = Random();

  bool rain = random.nextBool();

  rain ? print("帶傘出門") : print("不帶傘出門");

//?? 判斷為空
  var x1 = null;
  var x2 = 20;
  var y = x1 ?? x2; //x1=x1 ?? x22 => x1 ?? = x2
  print("y: $y");

//? 判斷為空時 不直接報錯 =ˊ是回傳 null
  String s1;
//s1.length //error s1 是 null
  String? s2;
//s2.length // error s2 is null
  print(s2?.length);

  (s2 == null) ? print(null) : print(s2.length);

// ... 代表擴展
  var l1 = [1, 2, 3];
  var l2 = [3, 4, 5];
  var l3 = [l1, ...l2];
  print('l3:$l3');
  var l4 = [...l1, ...l2];
  print('l4:$l4');

  // ...? 可以為空
  List? l5 ;
  l3 = [...l1,...?l4,...l2];
  print('l3:$l3');
}
