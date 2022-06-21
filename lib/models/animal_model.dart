import 'dart:math';

class Animal {
  late String name;
  late int age;
  late int weigth;

  Animal() {
    final names = <String>['lion', 'cat', 'dog'];
    final random = Random();
    name = names[random.nextInt(names.length)];
    age = random.nextInt(100);
    weigth = random.nextInt(100);
  }

  void incrementAge() {
    age++;
  }
}
