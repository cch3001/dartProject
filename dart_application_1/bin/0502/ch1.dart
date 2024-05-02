final folwerColor = {
  'reoses':'red',
  'violets':'blue' 
};

const numbers = [2,4,6,8,10,12];

void main(List<String> args) {
  
 //folwerColor.forEach((flower, color) { print('$flower are $color ');});
 
 print('numbers runtimetype ${numbers.runtimeType}');
 final a = numbers.map((e) => e*e) ;

 print('a  $a');
 print('a runtimetype  ${a.runtimeType} ');
 
 final b = a.toList();

 a.forEach((element) {print(element);}); 


  
}