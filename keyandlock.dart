import 'dart:math';

class PasswordManager {
  // Method to validate the strength of a given password
  bool validatePasswordStrength(String password) {
    // Check for length (at least 8 characters)
    if (password.length < 8) {
      print("Password is too short. It must be at least 8 characters long.");
      return false;
    }

    // Check for at least one uppercase letter, one lowercase letter, and one number
    bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = password.contains(RegExp(r'[a-z]'));
    bool hasDigit = password.contains(RegExp(r'[0-9]'));
    bool hasSpecialChar = password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

    if (!hasUppercase || !hasLowercase || !hasDigit || !hasSpecialChar) {
      print("Password must contain at least one uppercase letter, one lowercase letter, one number, and one special character.");
      return false;
    }

    // If all conditions are met, the password is strong
    print("Password is strong.");
    return true;
  }

  // Method to generate a password based on the specified level
  String generatePassword(String level) {
    // Set default values for each level
    int passwordLength;
    String chars;

    switch (level.toLowerCase()) {
      case 'strong':
        passwordLength = 16; // Strong password should be longer
        chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_+[]{}|;:,.<>?';
        break;
      case 'intermediate':
        passwordLength = 12; // Intermediate password length
        chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
        break;
      case 'low':
        passwordLength = 8; // Low strength password length
        chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
        break;
      default:
        print('Invalid level. Defaulting to low strength.');
        passwordLength = 8;
        chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
        break;
    }

    // Generate the password by randomly picking characters from the set
    Random rand = Random();
    StringBuffer password = StringBuffer();
    for (int i = 0; i < passwordLength; i++) {
      password.write(chars[rand.nextInt(chars.length)]);
    }

    return password.toString();
  }
}

void main() {
  // Create an instance of PasswordManager
  PasswordManager passwordManager = PasswordManager();

  // Example 1: Validate a password
  String testPassword = "Password123!";
  print("Validating password: $testPassword");
  passwordManager.validatePasswordStrength(testPassword); // Should print that the password is strong

  // Example 2: Generate a strong password
  String strongPassword = passwordManager.generatePassword("strong");
  print("\nGenerated strong password: $strongPassword");

  // Example 3: Generate an intermediate password
  String intermediatePassword = passwordManager.generatePassword("intermediate");
  print("\nGenerated intermediate password: $intermediatePassword");

  // Example 4: Generate a low strength password
  String lowPassword = passwordManager.generatePassword("low");
  print("\nGenerated low strength password: $lowPassword");

  // Example 5: Validate a weak password
  String weakPassword = "password";
  print("\nValidating password: $weakPassword");
  passwordManager.validatePasswordStrength(weakPassword); // Should fail validation
}
