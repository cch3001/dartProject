
void main(){

  final a = Surface() ;
  a.onTouch = (double x,double y) => print('x:$x, y:$y') ;


  a.touch(2.22, 3.66);

  final b = Surface() ;
  b.onTouch = (double x,double y) => print('x:$x, y:$y') ;


}

class Surface{

  void Function (double x,double y)? onTouch ;
  void touch(double x,double y){
    onTouch!(x,y) ;
  }

}