class Person2 {
  //宣告私有屬性 '_'
  late String _name;
  late String _nickName;

  //定義 set( write)
  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    }
  }

  //定義 get (讀取)\
  //getName()
  String get name {
    return _name.isEmpty ? "No name" : _name;
  }

  set nickName (String value) => value.isNotEmpty ? _nickName = value: _nickName = "no name" ;

  String get nickName => _nickName ;

  // get set 簡寫方式
  late int _age ;
  int get age => _age ;
  set age(int value) => _age = value ;
}