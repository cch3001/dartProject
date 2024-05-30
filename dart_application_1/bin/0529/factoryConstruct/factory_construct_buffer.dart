class Logger{
  final String name ;
  bool mute = false ;

  //私有命名建構子
  Logger._internalW(this.name) ;

  //factory construct
  factory Logger(String name){
    return  _logger.putIfAbsent(name, ()=> Logger._internalW(name)) ; //put callback function
  }

  //物件緩存器
  static final Map<String,Logger> _logger = {} ;

  void log(String msg){
    if(!mute) print("$name: $msg ") ;
  }
}

void main(){

  var l1 = Logger('Logger1');
  var l2 = Logger('Logger2');

  l1.log('Hello');
  l2.log('Hi') ;
  var l3 = Logger('Logger1');
  print(identical(l1, l2));
  print(identical(l1, l3)); //只到相同物件
}