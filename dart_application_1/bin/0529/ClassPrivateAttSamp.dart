import 'Person2.dart';
import 'Animal.dart' ;

// ignore_for_file: unused_local_variable

class Person {
  //宣告私有屬性 '_'
  late String _name;

  //定義 set( write)
  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    }
  }

  //定義 get (讀取)\
  //getName()
  String get name {
    return _name.isEmpty ? "No name" : _name;
  }
}

void main(List<String> args) {
  var p1 = Person() ;
  p1.name = 'John' ;
  print("p1.name : ${p1.name}") ;
  p1._name = 'Mary' ;
  print("p1._name : ${p1.name}") ; //在同一檔案 

  var p2 = Person2() ;
  //p2._name = 'Mary' ; // err
  p2.name = 'Mary' ; 
  p2.nickName = "M1" ;
  p2.age = 23 ;
  print("p2.name : ${p2.name}") ; //在同一檔案 

  print("p2.nickName : ${p2.nickName}") ; 

  print("-animal---------------");
  var a = Animal();
  a.name = "小白" ;
  a.age  = 5 ;
 // a._run() ; //error 
  a.execTun() ;

}
