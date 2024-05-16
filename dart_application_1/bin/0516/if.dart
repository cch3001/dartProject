
import 'dart:math';

void main(List<String> args){

  Random random = Random();

  //random.nextInt(200)
  var num = random.nextInt(200) -100;
  print("num is $num");
  //if 
  if(num > 0){
    print('this is an positive number');
  }

  var weather = "rain";
  var isRain = true ;
  isRain = random.nextInt(10)>5 ;
  if(weather == 'rain'){
    print("帶雨傘出門");
  }

   if(isRain){
    print("帶雨傘出門");
  } 

  //if else
  num =  random.nextInt(100) ;
  print("2. num is $num");
  if(num%2 ==0){
    print("num is even.");
  }else{
    print("num is odd.");
  }

  if(isRain){
    print("帶雨傘出門");
  }else{
    print("免帶雨傘出門");
  }
  (num%2 ==0) ? print("帶雨傘出門"):print("免帶雨傘出門") ;
  (isRain) ? print("帶雨傘出門"):print("免帶雨傘出門") ;

  //if else if else if else
  num = random.nextInt(100) -50;
  print("num is $num");
  if(num >0){
    print('this is an positive number');
  }else if (num <0){
    print("this is an negtive number") ;
  }else{

  }
  var milk_brand = "光犬" ;
  if(milk_brand == "光犬"){
    print('buy two buttle') ;
  }else if(milk_brand == "統三"){
    print('buy one buttle') ;
  }else{
    print('不買閃') ;
  }

  //巢狀 if 條件式
/*
  if(){
    if(){
      if(){
        ......
      }
    }
  }else if(){
    if(){



*/



}