// void main() {
//   final buffer = StringBuffer();
//   for (int i = 2; i <= 1024; i *= 2) {
//     buffer.write(i);
//     buffer.write(' ');
//   }
//   print(buffer);
// }
//The above program shows how to build strings using for loop
// //The print function prints out powers of 2 up through 1024

// void main() {
//   final optionSingle = RegExp('wo+w');
//   print(optionSingle.hasMatch('woooow'));
// }

//creating the class
import 'dart:io';

class Car {
  //properties of the class
  String name = '';
  String model = '';
  int wheels = 0;
  String color = '';

  //method -Function defined within a class
  void Moving(int rotatingWheels) {
    wheels = rotatingWheels;
    print("$rotatingWheels wheels  are rotating hence the car is moving.");
  }

  void Coloring(String colored) {
    color = colored;
    print("The car is being colored $colored color.");
  }

  void Modelling(String modelled) {
    model = modelled;
    print("The car is being made in the $modelled model.");
  }
}

void main() {
  Car MyCar = Car();
  stdout.write("Enter the name of your car: ");
  String CarName = MyCar.name = stdin.readLineSync()!;
  print('The name of my car is $CarName');
  MyCar.Moving(4);
  MyCar.Coloring('fawn');
  MyCar.Modelling('Audi');
}
