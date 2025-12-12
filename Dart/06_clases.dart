void main() {
  final wolveine = Hero(name: 'Wolveine', power: 'Regeneracion');
  print(wolveine);
}

class Hero {
  String name;
  String power;

  /*Hero(String pName, String pPower) : name = pName, power = pPower;*/

  /*Hero(this.name, this.power); */

  Hero({required this.name, this.power = 'Sin poder'});

  @override
  String toString() {
    return '$name - $power';
  }
}
