
class Persion{

  String givenName;
  String surname;
  String get fullName => '$givenName $surname' ;

  Persion(this.givenName,this.surname) ;

  @override
  String toString() => fullName ;


}

  class Student extends Persion{

  // Student(String givenName, String surname)
  // :super(givenName, surname);
  Student(super.givenName, super.surname);
  var grades = <Grade>[];
    
  }

 // typedef Grade(int grade);

 class Grade{
  int grade ;
  Grade(this.grade) ;
 }

class SomeParent{

  String? givenName;
  String? surname;

  SomeParent(this.givenName,this.surname);

  void doSomeWork(){
    print('Parent working');
  }
  void doEating(){
    print('Eating');
  }
}

class SomeChild extends SomeParent{

  SomeChild(String givenName,String surname)
  :super(givenName,surname) ;

  @override
  void doSomeWork(){
    super.doSomeWork();
   // print('child working');
     
  }

  @override
  void doEating(){
    super.doEating();
    print('drinking');
  }

}

void Main(){

   SomeChild someChild = SomeChild('Tim','Dood');
   someChild.doSomeWork();
   someChild.doEating();
}