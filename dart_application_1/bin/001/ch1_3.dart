void main(){
  nameFunction2(nameFunction) ;//不會執行
  nameFunction2(nameFunction()) ;

}

void nameFunction2(Function abc){
  //都未執行到
  abc();
  print(abc());

}

Function nameFunction(){

  return ()=>print("hello");
}