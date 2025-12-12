void main() {
  final Map<String, dynamic> heroJson = {
    'name': 'Wolverine',
    'power': 'Regeneracion',
    'isAlive': false,
  };

  final wolverine = Hero.fromJson(heroJson);
  print(wolverine);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No found',
      power = json['power'] ?? 'No found',
      isAlive = json['isAlive'] ?? 'No found';

  @override
  String toString() {
    return '$name - $power - $isAlive';
  }
}
