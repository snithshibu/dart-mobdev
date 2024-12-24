import 'dart:io';

void main() {
  // Collecting user details
  print("Enter your name:");
  String name = stdin.readLineSync()!;

  print("Enter your phone number:");
  String phoneNumber = stdin.readLineSync()!;

  print("Enter your age:");
  int age = int.parse(stdin.readLineSync()!);

  print("Enter your height (in cm):");
  double height = double.parse(stdin.readLineSync()!);

  print("Enter your weight (in kg):");
  double weight = double.parse(stdin.readLineSync()!);

  print("Enter your address:");
  String address = stdin.readLineSync()!;

  // Collect hobbies as a list
  print("Enter your hobbies (separate each hobby with a comma):");
  String hobbiesInput = stdin.readLineSync()!;
  List<String> hobbies = hobbiesInput.split(',');

  // Format and display the biodata
  print("\n--- Your Biodata ---\n");
  print("Name: $name");
  print("Phone Number: $phoneNumber");
  print("Age: $age");
  print("Height: ${height.toStringAsFixed(2)} cm");
  print("Weight: ${weight.toStringAsFixed(2)} kg");
  print("Address: $address");
  print("Hobbies:");
  for (int i = 0; i < hobbies.length; i++) {
    print("  ${i + 1}. ${hobbies[i].trim()}");
  }

  // Final message
  print("\n--- End of Biodata ---");
}
