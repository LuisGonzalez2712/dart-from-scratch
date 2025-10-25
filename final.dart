import 'dart:io';
import 'challenges/index.dart';
import 'menu/index.dart';

void main() {
  print('Ingrese su nombre: ');
  String? nombre = stdin.readLineSync();
  print('¡Hola $nombre! Por favor, elige un ejercicio del siguiente menú:\n');
  Menu.mostrarMenu();

  while (true) {
    print('\nSeleccione una opción: ');
    String? entrada = stdin.readLineSync()?.toLowerCase();

    if (entrada == 'exit' || entrada == 'q') {
      break; // salir del ciclo
    }

    int? eleccion = int.tryParse(entrada!);

    if (eleccion != null && eleccion >= 1 && eleccion <= 15) {
      switch (eleccion) {
        case 1:
          Challenge1().run();
          break;
        case 2:
          Challenge2().run();
          break;
        case 3:
          Challenge3().run();
          break;
        case 4:
          Challenge4().run();
          break;
        case 5:
          Challenge5().run();
          break;
        case 6:
          Challenge6().run();
          break;
        case 7:
          Challenge7().run();
          break;
        case 8:
          Challenge8().run();
          break;
        case 9:
          Challenge9().run();
          break;
        case 10:
          Challenge10().run();
          break;
        case 11:
          Challenge11().run();
          break;
        case 12:
          Challenge12().run();
          break;
        case 13:
          Challenge13().run();
          break;
        case 14:
          Challenge14().run();
          break;
        case 15:
          Challenge15().run();
          break;
        default:
          print('Presione una tecla para continuar...');
          stdin.readLineSync();
          Menu.mostrarMenu();
          break;
      }

      print('\n--------------------------------------------------');
      print('Seleccione otra opción o escriba "exit" para salir:');
      Menu.mostrarMenu();
    } else {
      print('Entrada no válida. Ingrese un número del 1 al 15, o "exit" / "q" para salir.');
    }
  }

  print('Gracias por usar el programa. ¡Adiós!');
}
