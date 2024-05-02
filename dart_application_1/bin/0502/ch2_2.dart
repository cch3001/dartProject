void main() {
  
  final desserts = ['cookies','pie','donuts','brownies'];
  desserts.sort((a,b){
    print('$a, $b');
    return a.compareTo(b);
  });
  print(desserts);

    desserts.sort((a,b){
    print('$a, $b');
    return a.length.compareTo(b.length);
  });
  print(desserts);
  final bigTallDesserts = desserts
  .where((element) => element.length>5)
  .map((e) => e.toUpperCase()).toList();
  print("bigTallDesserts $bigTallDesserts") ;





  final number = [5,3,6,7,2,9] ;
  number.sort();
  print(number);
  number.sort((a,b)=> b.compareTo(a));
  print(number);
}