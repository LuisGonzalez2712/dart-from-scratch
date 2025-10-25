import 'dart:io';
import 'dart:math';

/// Determinar si un número es positivo, negativo o cero
class Challenge1 {
  void run() {
    stdout.write('Ingrese un número: ');
    int num = int.parse(stdin.readLineSync()!);
    if (num > 0) {
      print('El número es positivo');
    } else if (num < 0) {
      print('El número es negativo');
    } else {
      print('El número es cero');
    }
  }
}

/// Operaciones básicas entre dos números
class Challenge2 {
  void run() {
    stdout.write('Ingrese el primer número: ');
    double a = double.parse(stdin.readLineSync()!);
    stdout.write('Ingrese el segundo número: ');
    double b = double.parse(stdin.readLineSync()!);

    print('La suma es: ${a + b}');
    print('La resta es: ${a - b}');
    print('La multiplicación es: ${a * b}');
    if (a == 0 && b == 0) {
      print('La división es indeterminada');
    } else if (b != 0) {
      print('La división es: ${a / b}');
    } else {
      print('No se puede dividir por cero');
    }

    if (a > b) {
      print('El primer número es mayor que el segundo');
    } else if (a < b) {
      print('El primer número es menor que el segundo');
    } else {
      print('Los números son iguales');
    }
  }
}

/// Determinar el cuadrado de un número
class Challenge3 {
  void run() {
    stdout.write('Ingrese un número: ');
    double num = double.parse(stdin.readLineSync()!);
    print('El cuadrado de $num es ${num * num}');
  }
}

/// Determinar el área de un círculo
class Challenge4 {
  void run() {
    stdout.write('Ingrese el radio de un círculo: ');
    double radio = double.parse(stdin.readLineSync()!);
    double area = pi * pow(radio, 2);
    print('El área del círculo es: $area');
  }
}

/// Día de la semana según número (1–7)
class Challenge5 {
  void run() {
    stdout.write('Ingrese un número del 1 al 7: ');
    int dia = int.parse(stdin.readLineSync()!);
    switch (dia) {
      case 1:
        print('Lunes');
        break;
      case 2:
        print('Martes');
        break;
      case 3:
        print('Miércoles');
        break;
      case 4:
        print('Jueves');
        break;
      case 5:
        print('Viernes');
        break;
      case 6:
        print('Sábado');
        break;
      case 7:
        print('Domingo');
        break;
      default:
        print('Número no válido. Debe ser entre 1 y 7.');
    }
  }
}

/// Determinar impuesto sobre salario mayor a 1000
class Challenge6 {
  void run() {
    stdout.write('Ingrese su salario: ');
    double salario = double.parse(stdin.readLineSync()!);
    if (salario > 1000) {
      double impuesto = salario * 0.10;
      print('El impuesto a pagar es: $impuesto');
    } else {
      print('No se aplica impuesto.');
    }
  }
}

/// División entre dos números con manejo de errores
class Challenge7 {
  void run() {
    try {
      stdout.write('Ingrese el número a dividir: ');
      double a = double.parse(stdin.readLineSync()!);
      stdout.write('Ingrese el divisor: ');
      double b = double.parse(stdin.readLineSync()!);

      if (b == 0) {
        throw Exception('División por cero');
      }
      print('El resultado de la división es: ${a / b}');
    } on FormatException {
      print('Error: Entrada no válida. Ingrese números correctos.');
    } catch (e) {
      print('Error: ${e.toString()}');
    }
  }
}

/// Suma de números pares entre 1 y 100
class Challenge8 {
  void run() {
    int suma = 0;
    for (int i = 1; i <= 100; i++) {
      if (i % 2 == 0) suma += i;
    }
    print('La suma de los números pares entre 1 y 100 es: $suma');
  }
}

/// Suma de fracciones
class Challenge9 {
  void run() {
    try {
      stdout.write('Ingrese el numerador de la primera fracción: ');
      int num1 = int.parse(stdin.readLineSync()!);
      stdout.write('Ingrese el denominador de la primera fracción: ');
      int den1 = int.parse(stdin.readLineSync()!);

      stdout.write('Ingrese el numerador de la segunda fracción: ');
      int num2 = int.parse(stdin.readLineSync()!);
      stdout.write('Ingrese el denominador de la segunda fracción: ');
      int den2 = int.parse(stdin.readLineSync()!);

      Fraccion f1 = Fraccion(num1, den1);
      Fraccion f2 = Fraccion(num2, den2);
      Fraccion resultado = f1.sumar(f2);

      print('La suma de las fracciones $f1 + $f2 es: $resultado');
    } on FormatException {
      print('Error: Entrada no válida. Ingrese números enteros.');
    } on ArgumentError catch (e) {
      print('Error: ${e.message}');
    } catch (_) {
      print('Error inesperado.');
    }
  }
}

/// Clase Fracción
class Fraccion {
  final int numerador;
  final int denominador;

  Fraccion(this.numerador, this.denominador) {
    if (denominador == 0) {
      throw ArgumentError('El denominador no puede ser cero.');
    }
  }

  Fraccion sumar(Fraccion otra) {
    int nuevoNum = numerador * otra.denominador + otra.numerador * denominador;
    int nuevoDen = denominador * otra.denominador;
    return Fraccion(nuevoNum, nuevoDen);
  }

  @override
  String toString() => '$numerador/$denominador';
}

/// Mostrar palabra en inverso
class Challenge10 {
  void run() {
    stdout.write('Ingrese una palabra: ');
    String palabra = stdin.readLineSync()!;
    String inversa = palabra.split('').reversed.join();
    print('La palabra en inverso es: $inversa');
  }
}

/// Promedio de tres números
class Challenge11 {
  void run() {
    try {
      stdout.write('Ingrese el primer número: ');
      double a = double.parse(stdin.readLineSync()!);
      stdout.write('Ingrese el segundo número: ');
      double b = double.parse(stdin.readLineSync()!);
      stdout.write('Ingrese el tercer número: ');
      double c = double.parse(stdin.readLineSync()!);

      double promedio = (a + b + c) / 3;
      print('El promedio es: $promedio');
    } catch (e) {
      print('Error: Entrada no válida.');
    }
  }
}

/// Determinar el mayor de 5 números
class Challenge12 {
  void run() {
    try {
      double mayor = double.negativeInfinity;
      for (int i = 1; i <= 5; i++) {
        stdout.write('Ingrese el número $i: ');
        double num = double.parse(stdin.readLineSync()!);
        if (num > mayor) mayor = num;
      }
      print('El mayor de los cinco números es: $mayor');
    } catch (e) {
      print('Error: Entrada no válida.');
    }
  }
}

/// Determinar si una palabra es palíndromo
class Challenge13 {
  void run() {
    stdout.write('Ingrese una palabra: ');
    String palabra = stdin.readLineSync()!;
    String inversa = palabra.split('').reversed.join();
    if (palabra == inversa) {
      print('La palabra es un palíndromo');
    } else {
      print('La palabra no es un palíndromo');
    }
  }
}

/// Determinar si un número es par o impar
class Challenge14 {
  void run() {
    try {
      stdout.write('Ingrese un número: ');
      int num = int.parse(stdin.readLineSync()!);
      if (num % 2 == 0) {
        print('El número es par');
      } else {
        print('El número es impar');
      }
    } catch (_) {
      print('Error: Entrada no válida.');
    }
  }
}

/// Determinar si un número está en el rango de 1 a 10
class Challenge15 {
  void run() {
    try {
      stdout.write('Ingrese un número: ');
      int num = int.parse(stdin.readLineSync()!);
      if (num >= 1 && num <= 10) {
        print('El número está en el rango de 1 a 10');
      } else {
        print('El número no está en el rango de 1 a 10');
      }
    } catch (_) {
      print('Error: Entrada no válida.');
    }
  }
}
