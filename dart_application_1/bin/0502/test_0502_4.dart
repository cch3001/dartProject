
void main() {

  String a = "http://Test" ;
  String b = "https://Test" ;
  print(idHttpUrl(a));
  print(idHttpUrl(b));

}

bool idHttpUrl(String input){

  return (input.startsWith("http:") ||input.startsWith("https:")  );
  
}