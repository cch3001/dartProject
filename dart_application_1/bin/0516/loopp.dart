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

}

