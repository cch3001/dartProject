void main(List<String> args) {
//中介函式
  perimeter() {
    var pi = 3.14;
    return (int r) => 2 * pi * r;
  }

//理解函式做為回傳值使用
  var per = perimeter(); // (int r) => 2*pi*r
//dobule Function(int) per1 = permeter();
  var r6 = 9;
  print(per(r6));



//closure 閉包 :具有紀錄環境的特性

Function makeAdder(int addBy){
  //內層函式根外層函式所宣告變數位在相同的區塊中(環境一樣的)
  //內層函式可記錄區塊中定義的變數值 addby
  return (int i) => addBy+i ;
}

var add1 = makeAdder(2); //5= 2+3
var add2 = makeAdder(3); //7= 4+3


}
