import 'dart:io';

void main() {
  // Display the welcome message and explain the options to the user
  print("Welcome to the Basic Calculator!");
  print("You can perform arithmetic and comparison operations.");
  
  // Start an infinite loop for the menu until the user chooses to exit
  while (true) {
    // Display the menu with options
    print("\nChoose an operation:");
    print("1. Addition");
    print("2. Subtraction");
    print("3. Multiplication");
    print("4. Division");
    print("5. Compare two numbers");
    print("6. Exit");

    // Accept the user's choice of operation
    String? choice = stdin.readLineSync();

    // If the user chooses '6', the program will exit
    if (choice == '6') {
      print("Exiting the calculator. Goodbye!");
      break;
    }

    // If the user chooses any other option, proceed to ask for two numbers
    print("Enter the first number:");
    double num1 = double.parse(stdin.readLineSync()!); // First number input
    print("Enter the second number:");
    double num2 = double.parse(stdin.readLineSync()!); // Second number input

    // Perform the chosen operation
    switch (choice) {
      case '1':
        // Addition
        double sum = num1 + num2;
        print("The sum of $num1 and $num2 is $sum.");
        break;

      case '2':
        // Subtraction
        double difference = num1 - num2;
        print("The difference between $num1 and $num2 is $difference.");
        break;

      case '3':
        // Multiplication
        double product = num1 * num2;
        print("The product of $num1 and $num2 is $product.");
        break;

      case '4':
        // Division (with check for division by zero)
        if (num2 != 0) {
          double quotient = num1 / num2;
          print("The quotient of $num1 divided by $num2 is $quotient.");
        } else {
          print("Error: Division by zero is not allowed.");
        }
        break;

      case '5':
        // Comparison
        print("Choose the comparison operation:");
        print("a. Check if first number is greater than second");
        print("b. Check if first number is less than second");
        print("c. Check if both numbers are equal");
        
        String? comparisonChoice = stdin.readLineSync();

        // Perform the comparison based on user choice
        if (comparisonChoice == 'a') {
          if (num1 > num2) {
            print("$num1 is greater than $num2.");
          } else {
            print("$num1 is not greater than $num2.");
          }
        } else if (comparisonChoice == 'b') {
          if (num1 < num2) {
            print("$num1 is less than $num2.");
          } else {
            print("$num1 is not less than $num2.");
          }
        } else if (comparisonChoice == 'c') {
          if (num1 == num2) {
            print("$num1 and $num2 are equal.");
          } else {
            print("$num1 and $num2 are not equal.");
          }
        } else {
          print("Invalid comparison choice.");
        }
        break;

      default:
        // Handle invalid menu choice
        print("Invalid choice. Please select a valid operation.");
    }
  }
}
