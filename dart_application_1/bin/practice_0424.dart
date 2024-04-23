void main() {
  question1();
}


List<String> exclude = ["AI"];
String splitToken = " ";

void question1() {
  // 請將以下a變數的內容改為Welcome AI Class.
  // 不可直接以重新賦值方式寫上述修改後內容
  final a = "WELCOME AI CLASS.";
  List<String> list = a.split(splitToken);

  List<String> listRes = [];
  for (var i = 0; i < list.length; i++) {
    listRes.add(parse(list[i]));
  }
  print(listRes.join(splitToken));
}

String parse(String input) {
  if (exclude.contains(input)) {
    return input;
  } else {
    input = input.toLowerCase();
    return "${input.substring(0, 1).toUpperCase()}${input.substring(1, input.length)}";
  }
}