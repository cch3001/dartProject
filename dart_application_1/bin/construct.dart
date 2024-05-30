class Point {
  //物件屬性
  late int x, y, z;

  //宣告 constructer no return
  // Point(int x,int y){
  //   //初始化物件屬性
  //   this.x = x ;
  //   this.y = y ;
  // }

  //透過初始化型參數的方式(簡化寫法)
  Point(this.x, this.y) ;
    //初始化物件屬性
  

  // Point(this.x,this.y,this.z){
  //   //初始化物件屬性

  // }

  //物件方法
  void printPoint() {
    print("Point :($x,$y) ");
  }
}

class Person{

  //建議宣告 final
  final String _name ;
  final int _age ;

  Person(this._name,this._age);

  Person.underage(this._name): _age = 18 ;

  String get name => _name ;
  int get age => _age ;

  void showInfo(){
    print("$_name: $_age years old. ") ;
  }
}

// void main() {
//   var p = Point(1, 2);
//   //操作方法
//   p.printPoint();
//   //操作物件屬性
//   //修改物件鼠性
//   p.x = 3;
//   print("p.x : ${p.x}");

//   String s1 = "hello";
//   print('s1.length :${s1.length} ');
// }

void main() {

  var adult = Person("Bobobo",28);
  adult.showInfo();
  var child = Person.underage("Emily");
  child.showInfo();
}