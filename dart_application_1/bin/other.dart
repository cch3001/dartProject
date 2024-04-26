void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  List<int> doubledNumbers = numbers.map((number) => number * 2).toList();

  print(doubledNumbers); // Output: [2, 4, 6, 8, 10]

  //閉包
  print(numbers.map((e) => e+1).toList());
}
