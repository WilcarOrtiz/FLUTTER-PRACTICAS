void main() {
  print(greetEveryone());
  print(greetPerson(name: "Wilcar"));
}

String greetEveryone() {
  return 'Hola mi gente';
}

String greetEveryone2() => 'Hola mi gente';

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptionals(int a, [int b = 0]) {
  return a + b;
}

String greetPerson({
  required String name,
  String message = 'Hola como estas?',
}) {
  return '$message $name';
}
