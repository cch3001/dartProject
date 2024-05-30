class Person{

  String _firstName ;
  String _lastName ;

  Person(this._firstName,this._lastName) ;
  //重導向命名建構子
  Person.fullName(String fullName):this(fullName.split(' ')[0],fullName.split(' ')[1]) ;

  String get firstName => _firstName ;
  String get lastName => _lastName ;


}


  void main(List<String> args){

    var per1 = Person('Jhon', 'wick') ;
    print("person first name : ${per1.firstName} , last name : ${per1.lastName} ") ;

    var per2 = Person.fullName("Mickey mouse") ;

    print("per2 first name : ${per2.firstName} , last name : ${per2.lastName} ") ;


  }