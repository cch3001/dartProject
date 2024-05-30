class Person{
  late String firstName ;
  String name ;
  /*
  Person.fromJason(Map data){
    print('in person') ;
  }
  */
  Person.fromName(this.name) ;
}

class Employee extends Person{
  Employee.fromJason(String name) :super.fromName(getEmployeeName(name)){
    print('in Employee') ;
  }

  static String getEmployeeName(String name){
    return 'Employee $name' ;
  }
}

/*
class Employee extends Person{
  Employee.fromJason(Map data) :super.fromJason(data){
    print('in Employee') ;
  }
}

*/


 void main(){
  //var e = Employee.fromJason({'apple':10});
  var e = Employee.fromJason('Kelly');
  print(e.name);
 }