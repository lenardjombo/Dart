import 'dart:io';

void main() {
  final lowercase = RegExp(r'[a-z]');
  final uppercase = RegExp(r'[A-Z]');
  final number = RegExp(r'[0-9]');
  
  while (true) {
    print('Enter your password:');
    var passwordinput = stdin.readLineSync();
    final password = passwordinput;

    if (password == null || password.isEmpty) {
      print('Password cannot be empty');
      continue;
    }

    if (!lowercase.hasMatch(password)) {
      print('Your password must contain a lowercase letter!');
    } else if (!uppercase.hasMatch(password)) {
      print('Your password must contain an uppercase letter!');
    } else if (!number.hasMatch(password)) {
      print('Your password must contain a number!');
    } else if (password.length < 12) {
      print('Your password must be at least 12 characters long!');
    } else {
      print('Your password is ok!');
      break;
    }
  }
}
