void main(List<String> args) {
// switch case
  var grade = 'A';

  switch (grade) {
    case 'A':
      {
        print("super greate!");
      }
      break;
    case 'B':
      {
        print("very good");
      }
      break;
    case 'C':
      {
        print("good");
      }
      break;
    case 'D':
      {
        print("no good");
      }
      break;
    default:
  }

  print("2----------------------------------------");
  var milkBrand = "光犬" ;

  var tasted = "貧果口味" ;
  if(milkBrand == "光犬"){
    if(tasted == "貧果口味"){
      print("貧果口味 buy two");
    }else if (tasted == "巧顆粒口味"){
      print("巧顆粒口味 buy two");
    }
  }

  print("3----------------------------------------");
  switch(milkBrand){
    case "光犬":print("光犬 buy two") ;
      break;
    case "統三":print("統三 buy one") ;
      break;
    case "味全":print("味全 buy one") ;
      break;
    default:print("give up") ;

  }  

  print("4----------------------------------------");

  //空敘述貫穿 沒有下斷點
  var color = "Orange" ;
  switch(color){
    case "Green":
      print("color: green") ;
      break;
    case "Orange":

    case "Red":
      print("color: Red") ;
      break;
    default:
      print("color: none") ;         

  }

    milkBrand = "統三" ;
    switch(milkBrand){
    case "光犬":print("buy two") ;
      break;
    case "統三":
    case "味全":print("味全 buy one") ;
      break;
    default:print("give up") ;

  }  

  print("5----------------------------------------");
  //
  color = "Green" ;
  switch(color){
    case "Green":
      print("color: green") ;
      continue gta;
    case "Orange":

    gta:
    case "Red":
      print("color: Red") ;
      break;
    default:
      print("color: none") ;         

  }

    milkBrand = "光犬" ;
    switch(milkBrand){
    case "光犬":print("buy two") ;
      continue shopping;
    case "統三":
    shopping:
    case "味全":print("味全 buy one") ;
      break;
    default:print("give up") ;

  }  


}
