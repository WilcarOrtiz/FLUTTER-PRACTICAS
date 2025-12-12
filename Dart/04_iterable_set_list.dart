void main() {
  final numbers = [1, 2, 3, 4, 5, 4, 5, 6, 7, 8, 9, 0, 9, 8, 7, 8];
  print('index 0: ${numbers.last}');
  print('reverse: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('iterable: ${reversedNumbers}');
  print('set: ${reversedNumbers.toSet()}'); /*elimina los duplicados */
  print('list: ${reversedNumbers.toList()}');

  final numberGreaterThan55 = numbers.where((number) {
    return number > 5;
  });
  print(numberGreaterThan55);
}
