
//parent class
class Person{
  late final String _name ;
  //construnt
  Person(this._name) ;

  String get name => _name ;
}

//child class
class Student extends Person{
  late final int _id ;
  //construct
  Student(super.name,this._id);
  // Student(String name,this._id): super(name);

  int get id => _id ;
}

void main(){
  //產生child instance
  var s = Student("Peterr", 20241556) ;
  print('name:${s.name}, ID: ${s.id}') ;
  
}