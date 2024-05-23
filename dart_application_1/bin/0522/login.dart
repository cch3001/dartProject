Future<String> login(String userName, String pwd) {
  print("userName: $userName, pwd: $pwd");
  return Future(() => userName);
}

Future<String> getUserInfo(String userName) {
  print("id: $userName");
  return Future(() => 'userName: $userName ');
}

//以此return 表示為非同步
Future<String> saveUserInfo(String userInfo) {
  print("got userInfo: $userInfo");
  return Future(() => 'saved!');
}

void main(List<String> args) {
  //無窮止境的產生 callback ==> callback hell
  // login("peter","12345678").then((id){//使用者填寫資料
  //   getUserInfo(id).then((userInfo){ //取得使用者所填寫的資料
  //     saveUserInfo(userInfo).then((data) => print(data)) ;//儲存使用者資料
  //   });
  // }) ;

  //解方 第一種
  // login("peter","87654321")
  // .then((id) => getUserInfo(id))
  // .then((userInfo) => saveUserInfo(userInfo))
  // .then((value) => print("save to DB!"))
  // .catchError((e) => print(e)) ;

  //解方 第二種改寫 callback hell
  //async ... await: 同步的效果
  task() async {
    try {
      String id = await login('Jane', '12345');
      String userInfo = await getUserInfo(id);
      String result = await saveUserInfo(userInfo);
      print('result:$result');
    } catch (e) {
      print(e);
    }
  }

  task();
  /*
  login();
  getUserInfo();
  saveUserInfo();
  => 基於事件驅動的程式設計方法，會產生非預期的結果
  這是因為在此結構下，有所謂的同步非同步的概念
  使用 async ... await語法，就可以依照原本的設計流程進行描述
  */
}
