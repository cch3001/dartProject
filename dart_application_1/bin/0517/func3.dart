void main(List<String> agrs){

  //位置參數設定預設值
  //函式宣告+執行
  /*
    (宣告的參數){
      功能, 動作

    }(執行參數列)
  */
  (String from,String content,[DateTime? time,String device='phone']){
    print('來自 $from, 正文 $content');
    if(time !=null)
      // ignore: curly_braces_in_flow_control_structures
      print('\t 時間: $time');
    print('\t\t發送裝置: $device') ;
  }('jobs','hello',DateTime.now(),'Notebool') ;

}