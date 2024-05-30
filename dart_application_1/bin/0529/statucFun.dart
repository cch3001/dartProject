class Car{

 //4個屬性皆為私有屬性
 //類別屬性
 static int _totalCarSold = 0 ;//銷售數量
 static double  _total = 0 ; //銷售金額



 //物件屬性
 late String _model ; //型號
 late double _price ; //價格

  Car(String model, double price){
    this._model = model ;
    this._price = price ;
  }

 //物件方法 
 void sell(){
  //count
  _totalCarSold++ ;
  _total += _price ;
 }
 //類別方法
 static int getTotalCarsSold(){
  return _totalCarSold;
 }

 static double getTotalSales(){
  return _total ;
 }

}

void main(){

  var car_Toyata = Car('Toyata Camry',250000) ;

  var car_Honda = Car("Honda Civic",220000);

  car_Honda.sell() ;
  car_Honda.sell() ;
  print('6月份 total cars sold : ${Car.getTotalCarsSold()}') ;
  print('6月份 total cars sales : ${Car.getTotalSales()}') ;

  car_Toyata.sell() ;
  car_Honda.sell() ;
  print('6~7月份 total cars sold : ${Car.getTotalCarsSold()}') ;
  print('6~7月份 total cars sales : ${Car.getTotalSales()}') ;

}