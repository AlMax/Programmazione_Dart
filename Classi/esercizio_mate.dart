import 'dart:io';
import 'dart:math';

//si potrebbe usare la libreria Equatable per estendere la classi; fa un overrirde automatico degli operatori

abstract class Shape {
  double get perimeter;

  void printPerimetro() => print('Perimetro = ${perimeter.toStringAsFixed(2)}');
}

class Square extends Shape {
  final int side;
  Square({required this.side});

  @override
  double get perimeter => side * 4;

  @override
  void printPerimetro() {
    stdout.write('Quadrato: ');
    super.printPerimetro();
  }

  @override
  String toString() => 'Perimeter of Square is $perimeter';

  @override
  bool operator ==(covariant Square other) {
    //covariant fa si che la comparazione sia possibile solo tra questi oggetti
    return side == other.side;
  }
}

class Circle extends Shape {
  final int radius;
  Circle({required this.radius});

  @override
  double get perimeter => (2 * pi * radius);

  @override
  void printPerimetro() {
    stdout.write('Cerchio: ');
    super.printPerimetro();
  }
}

void main() {
  final quadrato = Square(side: 10);
  final cerchio = Circle(radius: 20);

  quadrato.printPerimetro();
  cerchio.printPerimetro();

  print(quadrato);

  print(quadrato == Square(side: 20));
}
