import 'dart:io';

void main() {
  //Taking input from the user
  stdout.write("Enter temperature: ");
  double temp = double.parse(stdin.readLineSync()!);

  //Taking the choice either Fahrenheit or Celcius
  stdout.write("Convert to (f)Fahrenheit or (c)Celcius: ");
  var choice = stdin.readLineSync()?.toLowerCase();

  double result;
  String unit;

  if (temp == null) {
    print("Invalid input! ");
    return;
  }
  if (choice == 'f'){
    result = temp * 9/5 +32 ;
    unit = 'F';
  }else if (choice == 'c'){
    result = (temp -32 )*5/9 ;
    unit = 'C';
  }else{
    print("Invalid choice ");
    return ;
  } 
  print('$temp ${unit == "F" ? "C":"F"} is $result $unit'); //ternary operator
  //if unit is F then print C
  //Else print F
}
