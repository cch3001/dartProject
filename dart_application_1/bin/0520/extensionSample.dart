extension encoded on String {
  String encode() {
   
    final output = StringBuffer();
    for (final codePoint in this.runes) {
      output.writeCharCode(codePoint + 1);
    }
    return output.toString();
  }
}

void main() {
  String a = "1000";
  print(a.encode());
}