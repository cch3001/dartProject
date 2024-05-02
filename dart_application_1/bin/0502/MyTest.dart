void performAsyncOperation(void Function(int result) callback) {
  // 模擬異步操作，這裡假設獲取結果需要一些時間
  Future.delayed(Duration(seconds: 2), () {
    int result = 42;
    // 當異步操作完成後，調用回調函數並將結果傳遞給它
    callback(result);
  });
}

void main() {
  print('開始執行異步操作...');
  performAsyncOperation((result) {
    print('異步操作完成，結果為: $result');
  });
  print('主函數執行完畢。');
}
