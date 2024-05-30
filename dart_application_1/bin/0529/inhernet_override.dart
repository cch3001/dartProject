class Animal{

  void makeSound(){
    print("動物發出聲音");
  }
}

class Dog extends Animal{

  //重定義
  @override
  void makeSound(){
    print("狗狗汪汪叫");
  }
}

void main(){
  var animal = Animal();
  var dog = Dog();
  animal.makeSound();
  dog.makeSound();
}