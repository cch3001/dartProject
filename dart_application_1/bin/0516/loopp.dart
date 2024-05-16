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

  //初始值 ; while(條件判斷){動作;間隔}
  var num = 5 ;
  factorial = 1 ;
  //階層運算
  while(num >= 1){
    factorial *= num ;
    num -- ;
  }
  print('factorial: $factorial') ;

  

  num = 5 ;
  factorial = 1 ;
  
  num = 5 ;
  factorial = 1 ;
  do {
    factorial *= num ;
    num -- ;
  } while (num >= 1);

  print('factorial: $factorial') ;

  //初始值;do{動作;間隔}while(條件判斷)
  //情境: 至少動作被執行1次
  var n1 = 8 ;
  do{ //條件不成立 會先執行後判斷 只執行1次
    print("do while n1: $n1") ;
    n-- ;
  }while(n1>10) ;

  n1 = 8 ;
  while(n1>10) {//先判斷條件是否成立 條件不合 就不執行
    print("while   n1: $n1") ;
    n-- ;
  }

  //控制流程的跳轉
  var i = 1 ;
  while(i<=10){
    if(i%5 == 0){
      print("第1個被5整除數字 : $i") ;
      break ;
    }
      print('i: $i') ;
  i++ ;
  }

}

