//A differenza delle classi, le interfacce ti obbligano a riscirivere i metodi della classe madre e sono unibili

class A {
  void ciaoA() => print('a');
}

class B {
  void ciaoB() => print('b');
}

class AB implements A, B {
  @override
  void ciaoA() {
    print('ab');
  }

  @override
  void ciaoB() {
    print('ba');
  }
}
