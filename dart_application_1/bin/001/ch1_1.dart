void main() {
  // final regex = RegExp('cat');
  // print(regex.hasMatch('concatentation'));
  var set = RegExp('b[oa]t');
  print(set.hasMatch('bat')) ;
  print(set.hasMatch('boat')) ;
  print(set.hasMatch('bot')) ;
  print('Z[oa]Z');

  set = RegExp('b[a-zA-z]t');
  print(set.hasMatch('bot')) ;
  print(set.hasMatch('boqwt')) ;
  print(set.hasMatch('sfsdfsdgfs')) ;

  set = RegExp('[a-zA-z]');
  print(set.hasMatch('bot')) ;
  print(set.hasMatch('boqwt')) ;
  print(set.hasMatch('sfsdfsdgfs')) ;

}

void exercise1() {
  var a = 1;
  //a="R" ;
  //a=2.0 ;

  var aa = 2.2;
  aa = 3;
  Object d = "";
  d = 3;
  d = "w";

  dynamic b = 1;
  b = "X";
}
