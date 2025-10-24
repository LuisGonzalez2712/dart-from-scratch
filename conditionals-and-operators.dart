import 'dart:io';

void main() {
  print("Enter first number:");
  double? a = double.tryParse(stdin.readLineSync()!);
  print("Enter second number:");
  double? b = double.tryParse(stdin.readLineSync()!);

  const indeterminado = "Indeterminate";
  if (a != null && b != null) {
    print(
      "Suma: ${a + b}, Resta: ${a - b}, Multiplicación: ${a * b}, División: ${b != 0 ? a / b : indeterminado}");
  } else {
    print("Please, enter valid numbers.");
  }
}
