

abstract class Persion{
String? givenName ;
String? surname ;
Persion(this.givenName,this.surname) ;
void play();
void eat();
}

class Student6 extends Persion{

  //Student6(super.givenName, super.surname);
  Student6(String givenName, String surname):super(givenName,surname);
  @override
  void eat() {
    print('$surname to eat ') ;
  }

  @override
  void play() {
    print(' $givenName to play');
  }
  
} 

void main(){

  //final aa = Persion() ;
  Student6 aa = Student6('Tom','Bala') ;
  aa.eat();

}