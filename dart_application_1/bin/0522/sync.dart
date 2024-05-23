void main(List<String> args) {
  print("main start ...");
  //透過future產生同步事件
  Future.sync(() => print('sync event1'));
  Future(() => print("async event2"));

  Future(() => print("async event3"));
  Future.sync(() => print('sync event4'));
  print("main end ...");
}