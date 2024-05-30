class Temerature {
  late double _celsius;
  late double _fahrenheit;
  
  // Temerature(double celsius):celsius = celsius,//初始化列表
  // fahrenheit = (celsius*9/5+32){
  //   if(celsius < 273.15 || fahrenheit < -459.67){
  //     throw ArgumentError("Invalid temperature vaule.");
  //   }
  // }
  
  Temerature(this._celsius) : //初始化列表
  _fahrenheit = (_celsius * 9 / 5 + 32) {
    if (_celsius < -273.15 || _fahrenheit < -459.67) {
      throw ArgumentError("Invalid temperature vaule.");
    }
  }

  //old 
  // Temerature(this._celsius){
  //   _fahrenheit = (_celsius * 9 / 5 + 32) ;
  //   if (_celsius < -273.15 || _fahrenheit < -459.67) {
  //     throw ArgumentError("Invalid temperature vaule.");
  //   }
  // }
  void display(){
    print("celsius : $_celsius, fahrenheit: $_fahrenheit");
  }
}

void main() {
  try {
    //想要執行的動作 但是這個動作不能保證一定是對 有可能產生錯誤
    var tt = Temerature(55);//可能造成錯誤 
    
    tt.display();

   }catch (e) {
  // } on Exception catch (e) {
    // TODO
    print('error; $e');
  }
}
