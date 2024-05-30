
// ignore_for_file: unnecessary_this

/// 
/// 只有屬性(變數)的類別宣告
 class Retangle{
  late double? width; //現在沒有值，但保證晚點會有值 不允許為空
  double? height;//允許為空
  double length = 10 ; //

 }

/// 
/// 有方法(函式)屬性(變數)的類別宣告
 class Retangle2{
  late double? width; //現在沒有值，但保證晚點會有值 不允許為空
  double? height;//允許為空
  double length = 10 ; //

  //方法宣告
  double getArea(width,length){
    this.width = width ;
    this.length = length ;
    return this.width! * this.length ;
  }

    //方法宣告
  double getArea2(double width,double length){
    this.width = width ;
    this.length = length ;
    return this.width! * this.length ;
  }

 }

void main(List<String> args){
  //建立一個實體物件 透過類別
  var r1 = Retangle() ;
  var r2 =  new Retangle() ;
  int a = 10 ;
  void fun(){

  }
  fun();
  //操作物件中的屬性
  r1.width = 20 ; //賦值(寫)
  //讀值
  print("r1.width:  ${r1.width}") ;
  print("r1.height:  ${r1.height}") ;
  print("r1.length:  ${r1.length}") ;
  /*
  需要先給值
  r1.width = 20 ; //賦值(寫)
    發生了例外狀況
    LateError (LateInitializationError: Field 'width' has not been initialized.)
  */
  var r3 = Retangle2();
  print(r3.getArea(13.5, 12)) ;

}
