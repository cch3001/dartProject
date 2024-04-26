// ignore_for_file: prefer_interpolation_to_compose_strings

void main() {
  case01();
  case02('case02 in');
  print(" case03 return value ${case03()} ");
  print(" case04 return value ${case04('case04 in ')} ");

  var case05Func = case05(6);
  print(" case05 return value ${case05Func(3)} ");
}

void case01() {
  print('void method, not return value');
}

void case02(String input) {
  print('void method parameter value $input');
}

int case03() {
  int rtn = 5;
  print('return int');
  return rtn;
}

String case04(String input) {
  print('return value $input');
  return input;
}

Function case05(int addBy) {
  return (int i) => addBy + i;
}
