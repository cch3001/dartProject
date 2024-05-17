// ignore_for_file: curly_braces_in_flow_control_structures

void main(List<String> args) {
  String say(String from, String msg, [String? device]) {
    var r = '$from say $msg';
    if (device != null) r = "$r with a $device";
    return r;
  }

  print(say("Peter","apple"));

  print(say2("Peter","apple"));

  print(say("Peter","apple","android"));

  print(say3("Peter","apple",device1:"iphone",device2:"pad"));

  print(say3("Peter","apple",device2:"pad",device1:"iphone"));


  getHttoUrl(String server,String path,{int port=80}){
    if(port == 80)
      print('http://$server/$path') ;
    else
     print('http:$port//$server/$path') ;
  }

  getHttoUrl('example.com', 'index.html') ;

  getHttoUrl('example.com', 'index.html',port:8080) ;

}

String say2( String from, String msg, [dynamic device]) {
  var r = 'PartII $from say $msg' ;
  if(device != null)
    // ignore: curly_braces_in_flow_control_structures
    r = "$r with a $device";
  return r;
}

String say3( String from, String msg, {String? device1,String? device2}) {
  var r = 'PartII $from say $msg' ;
  if(device1 != null && device2 !=null){
     // ignore: curly_braces_in_flow_control_structures
    r = "$r with a $device1 and $device2";   
  }

  return r;
}
