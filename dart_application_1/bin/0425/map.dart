// ignore_for_file: prefer_collection_literals

//import 'dart:math';

void main(List<String> args) {
  Map student = {'name': 'Tom', 'age': 43};
  print(student);
  var eRemoved = student.remove('age');
  print('remove element $eRemoved map is $student');

  student.clear();

  print(student);

  //foreach
  List l1 = [1, 2, 3, 4];

  /*
  function format:
  y=f(x,y,z) = ax+by+cz
  return_datatype function_name(參數列表:p1,p2...)
  處理過程.....
  return result
  */
  l1.forEach((element) {
    //element: l1裡面的元素 dart 取數值pattern
    print(element);
  });

  student = {'name': 'Tomy', 'age': 50};
  student.forEach((key, value) {
    //key 'name' value 'Tomy'
    print('key:$key: value:$value');
  });

  print(EnumOfYear.values);

  EnumOfYear.values.forEach((element) {
    print('value: $element index: ${element.index}');
  });

  final a = 10; //一開始就賦值 可忽略型別 runtime 只能賦值1次
  print(a);
  //a=20;
  // final int b=20; //err
  const String s1 = 'hi';
  // s1 = "heool" ; //s1值不可以被變更 編譯時候決定數值 有點像是 java static  final
  /*
   final const 差異在時間點
  */

  final t1 = DateTime.now();
  print(t1);

  //const t2 = DateTime.now(); //error: t2在編譯時期沒有值

  int i = 10;
  int j; //j的值不可為空 null
  i * 8;
  //j*4;//在使用變數值會檢查此變數是否有值
  int? k; // k的值可以為空 null
  //print("j: ${j}"); //error j 不可為 null
  print("k: $k");

  //與map 都是用 {}
  var set1 = {1, 2, 3, 'hello'};

  var set12 = {1, 2, 3, 3, 3, 2, 5, 'hello'};
  print(set1);
  print(set12);

  //建構子
  var s4 = new Set();
  s4.add(2.35);
  s4.addAll(set12);
  print(s4);

  //list 轉 set
//var s5 = Set.from([1,2,'hoho',true,1]);
  var s5 = Set.from([1, 2, 'hoho', true, 1]);
  print(s5);

  var x = s5.elementAt(3);
  print('x: $x');
  print('s5 have element "hoho" ${s5.contains("hoho")}');

  //set 轉 list
  List l2 = s5.toList();
  print("l2: $l2 ");

  //set 聯集 交集 差集
  var setM = {10, 11, 12, 13, 14, 15};
  var setN = {12, 18, 36, 43, 29};
  var setO = {2, 5, 10, 12, 33};

  print("m 聯集 n ${setM.union(setN)}");
  print("m 交集 n ${setM.intersection(setN)}");
  print("m 差集 o ${setM.difference(setO)}");
  print("o 差集 m ${setO.difference(setM)}");

  //四折運算
  var x1 = 10, x2 = 20;
  print("x1+x2 = ${x1 + x2}");
  print("x1-x2 = ${x1 - x2}");
  print("x1*x2 = ${x1 * x2}");
  print("x1/x2 = ${x1 / x2}");
  print("x1%x2 = ${x1 % x2}");
  print("x1~/x2 = ${x1 ~/ x2}");

  //postfix: 先取值後運算
  var x3 = 30;
  print("x3++ = ${x3++}  and x3= $x3 "); //x3=x3+1 -- 減法運算

  //prefix: 先運算後取值
  var x4 = 30;
  print("++x4 = ${++x3}  and x3= $x3 "); //x4=x4+1
}

enum EnumOfYear { Jan, Feb, Mar, Jun, Jul, Aug, Sep, Oct, Nov, Dec }
