void main(List<String> args){
  //loop 迴圈
  //for (初始直;結束條件;間隔值){......}
  //階層運算 n! 3! = 3*2*1
  var n = 5 ;
  var factorial = 1 ;
  //u-- => i = i-1 ;
  for(var i=n ; i>=1 ;i--){
    print("$factorial * $i = ${factorial*i} ");
    factorial *= i ; //factorail *i ;
  }

  print('factorial val is $factorial') ;

  //for 多變數組合
  var count=0;
  for(int temp,i=0 ,j=1; j<30 ;temp=i,i=j,j=i+temp){
    print('i: $i , j: $j ') ;
    // print('i: $i') ;
    // print('j: $j') ;
    count++ ;
  }
  print('count: $count') ;

  //for 應對 list
  var l1 = [12,13,14];
  l1[0] *= 2 ;
  l1[1] *= 2 ;
  l1[2] *= 2 ;
  print('l1[0] : $l1[0]') ;

  l1 = [17,18,19];
  for(var i=0;i<3;i++){
    l1[i] *= 2 ;
  }
  print('l1 : $l1') ;

  //未知容器元素數量
  l1 = [11,12,13,14,15,16];
  var l2 = [] ;
  for(var element_value in l1){
    print('element_value: $element_value ') ;
    element_value *=2 ;
    l2.add(element_value) ;
  }

  print('l2: $l2') ;

}

