import 'dart:io';

void main() {
  Cuadrado cuadr = Cuadrado();
  cuadr.base = 20;
  cuadr.altura = 40;
  print('Área: ${cuadr.area}');
  print('Perímetro: ${cuadr.perimetro}');
  print('Lado: ${cuadr.lado}');
}

class Rectangulo {
  double? base;
  double? altura;

  double get area => base! * altura!;
  double get perimetro => 2 * base! + 2 * altura!;
}

/* Herencia */
class Cuadrado extends Rectangulo {
  set lado(double value) {
    base = value;
    altura = value;
  }

  double get lado => base!;
}
