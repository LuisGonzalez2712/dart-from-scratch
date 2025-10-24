import 'dart:io';
import 'dart:math';

void main() {
  // Crear objeto de tipo Circulo
  var circ = Circulo();
  circ.radio = 20;

  var resultArea = circ.area();
  var resultPerim = circ.perimetro();

  print('Área: $resultArea');
  print('Perímetro: $resultPerim');
  print('El nuevo radio es: ${circ.add10()}');

  // Serie Fibonacci
  int prev = 0, next = 1, sum = 0;
  for (int i = 0; i < 10; i++) {
    print(prev);
    sum = prev + next;
    prev = next;
    next = sum;
  }

  // Manejo de excepciones
  try {
    stdout.write('Ingrese un número a dividir: ');
    double a = double.parse(stdin.readLineSync()!);

    stdout.write('Ingrese un número divisor: ');
    double b = double.parse(stdin.readLineSync()!);

    if (b == 0) {
      throw IntegerDivisionByZeroException();
    }

    print('El resultado es: ${a / b}');
  } on IntegerDivisionByZeroException {
    print('No se puede dividir por cero');
  } catch (e) {
    print('Error desconocido');
  }
}

// Interfaces en Dart → se implementan como clases abstractas
abstract class ExtraCalculations {
  double add10();
}

abstract class Figura {
  double area();
  double perimetro();
}

// Clase Circulo que implementa las interfaces
class Circulo implements Figura, ExtraCalculations {
  double radio = 0;

  @override
  double area() => pi * radio * radio;

  @override
  double perimetro() => 2 * pi * radio;

  @override
  double add10() => radio + 10;
}
