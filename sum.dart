import 'dart:io';

void main() {
  // Collecting user input for the two numbers
  print("Enter the first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  // Calculating the sum
  double sum = num1 + num2;

  // Using string interpolation to display the result
  String message = "The sum of $num1 and $num2 is $sum";

  // Displaying the result
  print(message);
}
