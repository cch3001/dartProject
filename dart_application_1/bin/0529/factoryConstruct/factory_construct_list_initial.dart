//import 'no'


class MyClass{
  final String name ;

  MyClass._initial(this.name);

  factory MyClass(String name){
    //對參數值做複雜的邏輯處理時 考慮使用 factory construct
    String modidiedName = name.toLowerCase();
    return MyClass._initial(modidiedName);
  }

}

void main(){
  var m = MyClass('Dart');
  print(m.name);
}