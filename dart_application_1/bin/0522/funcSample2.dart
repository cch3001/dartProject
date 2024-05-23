// ignore_for_file: file_names

void main(List<String> args) {
//函式做為參數傳遞
//參數的函式
  test() => print("hihi");

//主程式要執行的函式
  void execute(var fun) {
    //執行參數的函式
    test();
  }
}
