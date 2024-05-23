///
///
/// dart record 
void main(List<String> args){

// swap : 兩個值得交換
  (int,int) swap((int,int)record){
    var(a,b) = record ;
    return (b,a) ;
  }

  //原始資料
  (int,int) r = (12,30) ;
  var(r1,r2) = (12,30) ;
  print(swap(r));
  print('r1 : $r1, r2 : $r2') ;

  var(r11,r21) = swap((12,30)) ;
  print('r11 : $r11, r21 : $r21') ;

  r11 = 3;

  print('r11 $r11');


}