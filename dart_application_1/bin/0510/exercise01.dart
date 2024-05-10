void main(){
  // hello(5,6);
  // hello2(x:5,y:6);
  // hello2(x:5,y:6);

  assert(say('Bob', 'Howdy') == 'Bob says Howdy');

  assert(say('Bob', 'Howdy', 'smoke signal') ==
    'Bob says Howdy with a smoke signal');

}

void hello(int x,int y){
  print(x*y);
}

void hello2({int x = 1,int y = 2}){
  print(x*y);
}

void hello3({int x = 1,required int y }){
  print(x*y);
}
//可 null 
void hello4({int x = 1,required int? y }){
  print(x);
}

// void hello5({int? x ,required int? y }){
//   print(x*y);
// }

String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

String say2(String from, [String? msg, String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}