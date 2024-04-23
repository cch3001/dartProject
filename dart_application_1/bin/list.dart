

void main(List<String> args){
  var l1 = ["hi",1,12,3,'hi',true,'hi'];
  l1.insert(2,1);
  print(l1);

  //搜尋元素位置 indexof()
  print(l1.indexOf('hi'));
  print("index: ${l1.indexOf('hi')}");
  print("index: ${l1.indexOf('hdi')}");
  print("index: ${l1.indexOf('hi',5)}");
  int idx = 0;
  List<int> idxs = [];
  while(true){
    idx= l1.indexOf('hi',idx) ;
    if(idx==-1){
      break;
    }
    idxs.add(idx);
    idx+=1;
  }
  print("all idx $idxs");

  print("sublist: ${l1.sublist(3)}");
  print("sublist: ${l1.sublist(3,5)}");

  print("remove: ${l1.remove(1)}");
  print("l1: $l1");

  //指定位置方式移除元素

  print("remove at: ${l1.removeAt(2)}");
  print("removed l1: $l1");

  // int idx =0;
  // while()
  // l1.indexOf(element)

  //迭代==> 走訪 list的元素
  var prices = [200,300,250,280,350];
  List discount = [];
  for(var price in prices){
    print(price*0.8);
    discount.add(price*0.8);
  }
  print("discount: $discount");

  //可迭代物件中提供的 foreach() 走訪串列元素
  prices.forEach((element) {
    print(element);
  });

  prices.forEach((price) {// price == element 內部參考
    print(price);
  });

  //collect 資料型態的物件跟 if, for 搭配使用
  //traditional:
  var isAthenticate = true ;
  var users = ['jane','peter','max','john'];
  if(isAthenticate){
    users.add('root');
  }
  print(users);

  //dart
  var users_if = ['jane','peter',if(isAthenticate) 'root','max','john'];
  print(users_if);

  //for
  var l3 = [1,2,3];
  var l3_a = ['#0',for(var i in l3) '#$i'];
  print(l3_a);

  // List: 存放每個元素 value, 因為順序性排列,隱藏index資料
  //Map: 每個元素以 key:value形式存放資料 ,沒有順序
  var students = ['jane','peter','max','john'];
  var scores =[80,75,90,45];
  var students_scores = {'jane':80,'peter':75,'max':90,'john':45};

  print(students_scores);
  //map 取值: map 物件[key]
  print("peter's score = ${students_scores['peter']}");

  //map 重設值: map 物件[key]= 新值
  students_scores['peter'] = 66;
  print("peter's new score = ${students_scores['peter']}");

  //添加新的元素
  students_scores['apple'] = 60;
  print(students_scores);

  //透過建構子 constructor
  var people = new Map();
  people['name'] = 'Tom' ;
  people['tel'] = '0933403441' ;
  people['email'] = 'keli@gmail.com' ;
  people['address'] = 'New Taipei dsf fff' ;
  print(people);
  //取所有key
  print( "people keys: ${people.keys}" );
  print( "people containsKey: ${people.containsKey('tel')}" );
  print( "people keys runtimetype: ${people.keys.runtimeType}" ); // v.runtimeType

  //取出所有 value
  print("people values: ${people.values}");

  //map物件 addAll()
  people.addAll({"hobbies":['運動''打電動'],"major":"SW"});
  print(people);
  print(people["hobbies"[1]]);//people["hobbies"]=['運動''打電動']

  
  // var students_scores2 = {};
  // students_scores2.update(key, (value) => null)
}