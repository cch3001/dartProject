import 'dart:math';
//parent class
abstract class APIClient {
  void fetchData();
}

//child class 1
class DevApiClient implements APIClient {
  //私有建構子
  DevApiClient._();

  //定義 parent fetchData() 實踐內容
  @override
  void fetchData() {
    print("Fetch Data from development API...");
  }

  //工廠建構子
  factory DevApiClient() {
    return DevApiClient._();
  }
}

//child class 2
class TestApiClient implements APIClient {
  //私有建構子
  TestApiClient._();

  //定義 parent fetchData() 實踐內容
  @override
  void fetchData() {
    print("Fetch Data from TEST API...");
  }

  //工廠建構子
  factory TestApiClient() => TestApiClient._();
  // factory TestApiClient(){
  //   return TestApiClient._() ;
  // }
}

//child class 3
class ProdApiClient implements APIClient {
  //私有建構子
  ProdApiClient._();

  //定義 parent fetchData() 實踐內容
  @override
  void fetchData() => print("Fetch Data from Product API...");

  //工廠建構子
  factory ProdApiClient() => ProdApiClient._();
}


void main(List<String>args){
  //宣告變數
  APIClient client ;
  var senario = 'product';

  try {
    var rng = Random();
    switch (senario) {
      case 'development':
        client = DevApiClient();
        break;
      case 'test':
        client = TestApiClient();
        break;
      case 'product':
        client = ProdApiClient();
        break;
      default:
        throw Exception("Invalid senario");
    }

    client.fetchData() ;
  }catch(e){
    print('error: $e') ;
  } finally {
    // TODO
    
  }

  
}