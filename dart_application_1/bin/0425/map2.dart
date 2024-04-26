
main(List<String> args){

  var mt = Test();
  mt.say();
}

class Test{

  int? i; //跟IDE 說 暫時不用確認是否為 null
  Function? fun; 
  say(){
    if(i != null){
      i!*8 ; //跟IDE 保證非 null
    }
    if(fun !=null){
      fun!();
    }
  }
}


class Test2{

  int? i; //跟IDE 說 暫時不用確認是否為 null
  Function? fun; 
  say(){
    i=1;
    // print (i*8); //前面都給值 還是不給過
 print (i!*8);
    if(fun !=null){
      fun!();
    }
  }
}