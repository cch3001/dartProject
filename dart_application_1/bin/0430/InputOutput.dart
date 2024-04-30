
import "dart:io";
void main(List<String> args) {

  // //
  // stdout.write("Please enter Name : ");
  // var name = stdin.readLineSync() ;
  // print('name: $name') ;
  // print("type phone:");
  // var phone = stdin.readLineSync();


  stdout.write("加數 : ");
  var a1 = stdin.readLineSync() ;
  print('加數 a1: $a1') ;

  var a2 = stdin.readLineSync() ;
  print('被加數 a2: $a2') ;

  print('a1+a2: ${a1!+a2!}') ;

  print('int a1+a2: ${ int.parse( a1) + int.parse(a2)}') ;

  print('int a1*a2: ${ int.parse( a1) * int.parse(a2)}') ;

  print('int a1/a2: ${ int.parse( a1) /int.parse(a2)}') ;



  
  print("type phone:");
  var phone = stdin.readLineSync();

  //取得 main()的參數 args :List<String>
  print('args : $args') ;
  print(args[0].runtimeType);
  print(args[3].runtimeType);
}