
void main() {

  String a = "Test" ;
  print(padZero(a,a.length+1));

  print(padZero2(a));

}

String padZero(String input,int length){
  return input.padLeft(length,'0');
}

String padZero2(String input){
  return input.padLeft(input.length+1,'0');
}