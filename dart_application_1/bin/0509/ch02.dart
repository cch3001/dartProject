class Person {
  String name = '';
  int age = 0;

  void setInfo(String name, int age) {
    this.name = name;
    this.age = age;
  }

  void printInfo() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  var person = Person();

  // 使用級聯運算符連續設置屬性值和調用方法
  person
    ..setInfo('John', 30)
    ..printInfo(); // 使用級聯運算符調用方法

  // 也可以在級聯運算符中混合使用常規語法
  person
    ..name = 'Alice'
    ..age = 25
    ..printInfo();

}


  