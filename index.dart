import 'dart:io';

void main() {
  print('Hello, welcome to calculator years old!');
  print('Write your name:');
  String? nameInput = stdin.readLineSync();
  print('Nice to meet you $nameInput!');
  print('Write your years old in format dd/mm/yyyy?');
  String? birthdayInput = stdin.readLineSync();
  DateTime? dateConverted = convertToDateTime(birthdayInput!);
  if (dateConverted == null) {
    print('Invalid birthday date. You sent $birthdayInput');
    return;
  }

  var person = Person(
    name: nameInput,
    birthday: dateConverted,
    age: DateTime.now().year - dateConverted.year,
  );
  print('Your name ${person.name}');
  print('Your birthday ${person.birthday}');
  print('Your age ${person.age} years old');
}

DateTime? convertToDateTime(String dateString) {
  List<String> parts = dateString.split('/');
  int day = int.parse(parts[0]);
  int month = int.parse(parts[1]);
  int year = int.parse(parts[2]);
  return DateTime(year, month, day);
}

class Person {
  String? name;
  DateTime? birthday;
  int? age;
  Person({this.name, this.birthday, this.age});
}
