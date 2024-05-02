void main(List<String> args) {
  
  final myList = [1,2,3,4,5,6,7,8] ;
  // final a = myList.forEach((element) => {element});
  // print(a);
  final odds = myList.where((element) => element.isOdd).toList() ;
  print(odds);
  final total_ = myList.where((element) => element.isOdd).reduce((value, element) => value+element);
  print(total_) ;

  final total2_ = myList.reduce((value, element) => element.isOdd?value+element: value);
  print(total2_) ;

  //myList.fold<int>(initialValue, (previousValue, element) => null)
  // initialValue 可任意設定
  // final total3_ = myList.fold<int>(31, (sum, element){ 
  //   print('$sum, $element'); 
  //   return 0; }) ;


   final total3_ = myList.fold<int>(0, (sum, element) => sum+element);
  print('total3_ $total3_ ') ;


  // => 只能有1行
  // {} 多個

  final a = myList.forEach((element) {

    element = element+1; 

  });

  //const evens = [2,4,6,8,10,12];
  //const evens = [1,3,5,7,9,11,13];
  const evens = [5,7,9,11,13,15,17];
  final total = evens.reduce((value, element)  {
    print('value $value , element $element') ;
    return 0 ;
  }) ;

  print('total $total');

    final totalq = evens.reduce((value, element)  {
    print('value $value , element $element') ;
    return value +element;
  }) ;

  print('totalq $totalq');  

  final total2 = evens.reduce((value, element) => value*value);

  print('total2 $total2');  

  final total3 = evens.reduce((value, element) => value);
  print('total3 $total3');

  final total4 = evens.reduce((value, element) => value+element);
 print('total4 $total4');

 final myList2 = [1,2,3,4,5,6,7,8,9,10] ;

  
  
}

/* 
1. forEach 返回的值void，代表使用時要注意不能 return value
2. map 使用完後 return 值 is iterable，所以後面呼叫 map所得到的結果時，要使用 lementAt(idx) or toList() 轉 List
3. where 用於篩選 返回值 iterable
4. reduce 

*/