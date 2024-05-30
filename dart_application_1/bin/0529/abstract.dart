
abstract class Creatute{

  //宣告功能性
  void say();
  void wirte();

  void printIt(msg){
    print("message : $msg") ;
  }
}

class Geeksforgeeks extends Creatute{
  @override
  void say() {
    print("Yo Greek!") ;
  }

  @override
  void wirte() {
    print("Greeks for Greek");
  }
}

class Geeksforgeeks2 implements Creatute{
  @override
  void say() {
    print("Yo Greek!") ;
  }

  @override
  void wirte() {
    print("Greeks for Greek");
  }
  
  @override
  void printIt(msg) {
    print(" implement's message :$msg") ;
  }
}

void main(){
 
  var obj = Geeksforgeeks();
  obj.wirte() ;
  obj.say();
  obj.printIt("OKOK");

  var obj2 = Geeksforgeeks();
  obj2.wirte() ;
  obj2.say();
  obj2.printIt("OKOK");
}