void main(){
  var logger = Logger.abc("Button") ;
  logger.log("典籍了按鈕") ;

  logger = Logger.abc("push") ;
  logger.log("壓了按鈕") ;
}


class Logger{
  final String name;
  bool mute = false;
  static final Map<String,Logger> _cache = <String,Logger>{};
  factory Logger.abc(String name){
    if(_cache.containsKey(name)){
      return _cache[name]!;
    }else{
      final logger = Logger._internal(name);
      _cache[name] = logger ;
      return logger;
    }
  }
  Logger._internal(this.name);

  void log(String msg){
    if(!mute){
      print(msg) ;
    }
  }
}