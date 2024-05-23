import 'dart:math';

void main(List<String> args) {
  int getInt() {
    print("開始執行 gentInt");
    Random rad = Random();
    return rad.nextInt(100);
  }

  // Future.delayed(Duration(seconds: 2),() => throw AssertionError("assert error!"))
  //     .then((value) => null, onError: (e) => print(e))
  //     .whenComplete(()=>print("event complete!"));
  Future.wait([
    Future.delayed(Duration(seconds: 2),() => throw AssertionError("assert error!"))
        .then((value) => null, onError: (e) => print(e))
        .whenComplete(()=>print("event 1 complete!")),
    Future.delayed(Duration(seconds: 2),() => print("event 2 run "))
        .then((value) => null, onError: (e) => print(e))
        .whenComplete(()=>print("event 2 complete!")),
    Future.delayed(Duration(seconds: 2),() => print("event 3 run "))
        .then((value) => null, onError: (e) => print(e))
        .whenComplete(()=>print("event 3 complete!"))
  ]);
  print("main end   .....");

}