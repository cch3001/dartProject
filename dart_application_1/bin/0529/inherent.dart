class Parent{
  var _property ;

  Parent(this._property) ;
  inherentProperty()=> _property;
  dynamic get property => _property ;
}


class Child extends Parent{
  int siblings ;
  //Child(this.siblings,property):super(property) ;
  Child(this.siblings,super.property);

}

class Boys extends Parent{
  int siblings ;
  Boys(this.siblings,super.property);
}

class Girls extends Parent{
  String skirts;
  Girls(this.skirts,property):super(property) ;

}

void main(List<String> args){
  var c = Child(5,50000) ;
  print(c.property) ; //子類操作 parent 屬性
  print(c.siblings) ;
  print(c.inherentProperty()) ; //子類操作父親方法

  var b = Boys(10, 6000) ;
  print(b.property) ; //子類操作 parent 屬性
  print(b.inherentProperty()) ; //子類操作父親方法

  var g = Girls("long skirts", "688666") ;
  print(g.property) ; //子類操作 parent 屬性
  print(g.inherentProperty()) ; //子類操作父親方法
}