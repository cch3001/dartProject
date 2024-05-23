import "dart:io";

void main(List<String> args) {
  stdout.write("加數 : ");
  dynamic a1 = stdin.readLineSync();
  print('加數 a1: $a1');

  dynamic a2 = stdin.readLineSync();
  print('被加數 a2: $a2');

  a1 = int.parse(a1!);
  print(a1.runtimeType);

  a2 = int.parse(a2!);
  print(a2.runtimeType);

  print('a1+a2: ${a1 + a2}');
}
