void main() {
  final Map<String, dynamic> person = {
    'name': 'John',
    'age': 30,
    'isEmployed': true,
    'sprities': {'height': 180, 'weight': 75, 'isHealthy': true},
    'skills': ['Dart', 'Flutter', 'JavaScript'],
  };

  print(person['name']); // Output: John
  print(person['age']); // Output: 30
  print(person['sprities']['height']); // Output: true
}
