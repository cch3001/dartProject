main(){

   List<int> numbers = [1, 3, 6, 9, 12, 15, 18, 21] ;

   print(numbers.map((e) => e*2));

   print(numbers.map((e) => e*2).where((element) => element > 5));

   //rint(numbers.where((element) => element > 5)) ;

   (numbers.map((e) => e*2).where((element) => element > 5)).forEach((element) {print(element*element) ; } ) ;

  //print(numbers.reduce((value, element) => { return (value+element) ; }));

  print(numbers.map((e) => e*2).where((element) => element > 5).reduce((value, element) => value+element));



}