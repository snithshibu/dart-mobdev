void main() {
  // Example list of numbers to demonstrate the functionality
  List<int> numbers = [1, 2, 3, 4, 5];

  // Function to double each number
  print("Doubling the numbers:");
  processList(numbers, (int number) => number * 2);

  // Function to square each number
  print("\nSquaring the numbers:");
  processList(numbers, (int number) => number * number);

  // Function to subtract 1 from each number
  print("\nSubtracting 1 from the numbers:");
  processList(numbers, (int number) => number - 1);
}

// Step 1: Define the processList function
// processList takes two parameters: a list of numbers and a function that operates on each number.
void processList(List<int> numbers, int Function(int) operation) {
  // Step 2: Loop through the list and apply the operation to each element
  for (int number in numbers) {
    // Step 3: Apply the operation and print the result for each number
    int result = operation(number);
    print(result);
  }
}
