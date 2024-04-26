main() {

}

void methods1(bool flag){
  //bool flag = true;

   if(flag) return ;
  print("void method1") ;


}

int method2(){
  int rtn = 5 ;
  //return "Hi" ; //error
  return rtn ;
}

double method3(){
  int rtn = 5 ;
  //return "Hi" ; //error
  //return rtn ; err
  double rtn2 = 2 ;
  return rtn2 ;
}


