/// Returns a function that adds [addBy] to the
/// function's argument.
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

Function(int a) makeAdder2(int addBy) {
  return (int y) => addBy + y;
}

void main() {
  // // Create a function that adds 2.
  // var add2 = makeAdder(2);

  // // Create a function that adds 4.
  // var add4 = makeAdder(4);

  // assert(add2(3) == 5);
  // assert(add4(3) == 7);

  final a = makeAdder2(2) ;
  a(5);
  //print(a(5));
}