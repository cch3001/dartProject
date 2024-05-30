
class Counter{

  //宣告類別(靜態)屬性: static
  static int count = 0 ;
  int _myCount = 0 ;

  //建構子 contrucutor : 
  Counter(){
    count++ ;
  }
  void display(){
    print('count : $count ; my count : $_myCount') ;
  }

  void touchMyCount(){
    _myCount++ ;
  } 
}

void main(){
  print("Counter.count : ${Counter.count}") ;
  var c1 = Counter() ;//call constructor count:0->1
  var c2 = Counter() ;//call constructor count:1->2
  var c3 = Counter() ;//call constructor count:2->3

  c1.display() ; 
  c2.touchMyCount();
  c2.display() ;
  
  c3.display() ;

}