
///
/// record sample code
void main(List<String> agrs) {
  //record 資料型態:符號,可選參數不可設預設值
  (double v, String n, {String v1}) r1 = (3.14, 'Pi', v1: "real");
  print(r1.$1);
  print(r1.$2);
  print(r1.v1);


  (int,int,int,double) arithmetic(int a,int b){

    return (a+b,a-b,a*b,a/b);
  }

  print(arithmetic(8, 4)) ;

  var(add,sub,mul,dev) = arithmetic(8, 4) ;
  print(sub);
  var r2 = arithmetic(8, 4) ;
  print(r2.$1);
}
