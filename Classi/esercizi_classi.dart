class Animal {
  final int age;
  const Animal({required this.age});

  void sleep() => print('sleeping');
}

class Dog extends Animal {
  Dog({required int age}) : super(age: age); //supercostruttore

  void abbaia() => print('abbaia');

  @override //sta sostituendo il metodo sleep della classe madre
  void sleep() {
    print('cane dorme');
    super.sleep(); //così richiamo il metodo della classe madre
  }
}

void main() {
  final animal = Animal(age: 10);
  animal.sleep();

  final cane = Dog(age: 2);
  cane.abbaia();
  cane.sleep();
}
