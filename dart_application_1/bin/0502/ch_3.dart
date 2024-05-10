void main(List<String> args) {
  /** 
  print(myWidget.timeStamp!());
  print(myWidget2.timeStamp!());

  int a = 0;
  void test() {
    int a = 10; //作用在 test function 區域內
    for (int i = 0; i < 10; i++) {
      print(i);
      a = i;
    }

    Object d = 12;
    // d.switch (expression) {
    //   pattern => value,
    // }
    // print('${d.toString()}');
  }

  test();
  print('a $a');

  */

  // for(int i=0; i< 10;i++){
  //   print(i);
  // }
  // print(i);
}

class AnotherWidget {
  final String Function()? timeStamp;
  //       為何加{}
  AnotherWidget({this.timeStamp});
}

final myWidget =
    AnotherWidget(timeStamp: () => DateTime.now().toIso8601String());
final timeStamp = myWidget.timeStamp?.call();

final myWidget2 = AnotherWidget(timeStamp: () => '123');
