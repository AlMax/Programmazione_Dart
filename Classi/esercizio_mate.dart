import 'dart:io';
import 'dart:math';

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
}
