import 'dart:io';

void main() {
  // Get the input string from the user.
  print('Enter a string of digits (0-9):');
  String input = stdin.readLineSync()!;
  Set<int> usedNumbers = {};

  // Convert the input string to a list of integers.
  List<int> digits = input.split('').map(int.parse).toList();

  // Checking dulicates
  for (int digit in digits) {
    if (usedNumbers.contains(digit)) {
      print('Error: You cannot enter the same number twice.');
      return;
    }
    usedNumbers.add(digit);
  }

  digits.sort();

  // Move zero to the end of the list.
  if (digits.contains(0)) {
    digits.remove(0);
    digits.add(0);
  }

  // Sort the remaining digits in ascending order.

  // Create a list to store the combinations.
  List<String> combinations = [];

  // Iterate through the list of digits and generate combinations.
  for (int i = 0; i < digits.length; i++) {
    for (int j = i + 1; j < digits.length; j++) {
      for (int k = j + 1; k < digits.length; k++) {
        combinations.add('${digits[i]}${digits[j]}${digits[k]}');
      }
    }
  }

  // Print the combinations.
  print('Combinations:');
  for (String combination in combinations) {
    print(combination);
  }
}
