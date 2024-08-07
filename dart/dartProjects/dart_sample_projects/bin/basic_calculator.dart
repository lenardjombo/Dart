import 'dart:io';

void main() {
  print('''
Let's perform some basic calculations
  1.Addition.
  2.Subtraction.
  3.Multiplication.
  4.Division.
Choose opration to perform: ''');
  int? operation = int.parse(stdin.readLineSync()!);

  print("Enter the first number: ");
  double? num1 = double.parse(stdin.readLineSync()!);

  print("Enter the second number: ");
  double? num2 = double.parse(stdin.readLineSync()!);

  double result;
  switch (operation) {
    case 1:
      result = num1 + num2;
      print("Result: $num1 + $num2 = $result");
      break;
    case 2:
      result = num1 - num2;
      print("Result: $num1 + $num2 = $result");
      break;
    case 3:
      result = num1 * num2;
      print("Result: $num1 * $num2 = $result");
      break;
    case 4:
      result = num1 / num2;
      print("Result: $num1/$num2 = $result");
      break;
    default:
      print("Invalid operation entered! ");
  }
}
