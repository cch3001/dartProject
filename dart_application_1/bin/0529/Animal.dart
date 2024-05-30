class Animal{

  late String _name ;
  late int age ;

  set name(String v) => _name = v ;
  String get name => _name ;

  // 私有 method
  void _run(){
    print("$_name is running") ;
  }
  execTun(){
    this._run();
  }

}

void main(){
  var a = Animal();
  a.name = "小白" ;
  a.age  = 5 ;
  a._run() ;
  a.execTun() ;
}
