import 'dart:io';

void main() {
  // Welcome message and explanation of the program
  print("Welcome to the Multiplication Table Program!");
  print("This program will help you learn multiplication tables.");
  
  // Prompt user to enter a number
  print("Please enter a number to generate its multiplication table:");
  int num = int.parse(stdin.readLineSync()!);

  // Generate and display the multiplication table for the first 10 multiples of the input number
  print("\nMultiplication table for $num:");
  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    int product = num * i;
    sum += product;
    print("$num x $i = $product");
  }

  // Compute the sum of all numbers in the generated multiplication table
  print("\nSum of all numbers in the table: $sum");
}
