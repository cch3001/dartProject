void main(List<String> args) {
  
  final scores = [89,77,46,93,82,67,32,88];

  scores.sort((a,b)=>b.compareTo(a)) ;

  print(scores);
  
  print(scores.where((element) => element <=90 && element>=80).toList());

  final scores2 = [89,77,46,93,82,67,32,88];

  List<int> scores2_ = scores2.where((element) => element <=90 && element>=80).toList();

  print(scores2_);

  scores2_.sort((a,b)=>a.compareTo(b)) ;

  print(scores2_);

  final  manager = Manager();
  var hand = manager.handleEvent;
  hand();
 
}


class Manager{

  void handleEvent(){
    print("125");
  }
}