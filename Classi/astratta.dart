abstract class Astratta {
  double get area;
}

class Oggetto extends Astratta {
  final double side;

  Oggetto(this.side);

  @override
  double get area => side * side;
}

void printQualcosa(Astratta classeAstratta) {
  //questo metodo risulterà utilizzabile con ogni oggetto nato dalla classe astratta
  print(classeAstratta.area);
}

void main() {
  final ogg = Oggetto(10);
  print(ogg.area);
  printQualcosa((ogg));
}
