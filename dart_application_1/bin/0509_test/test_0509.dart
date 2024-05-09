
void main(){

  Surface surface = Surface({onTouch});
  
  surface.onTouch(202.3, 134.0) ;
}


class Surface{

  void onTouch(double x,double y) {
  print("x:$x,y:$y") ;
}


   Function touch(double x,double y){
      onTouch();
      //不能在這 print
   }

}
