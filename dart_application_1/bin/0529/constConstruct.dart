class Color{
  final int _red ;
  final int _green ;
  final int _blue ;
  ///長量建構子
  const Color(this._red,this._green,this._blue);

  int get red => _red ;
  int get green => _green;
  int get blue => _blue;

  void dispaly()=> print("Color : R=$_red, G=$_green, B=$_blue") ;
}
