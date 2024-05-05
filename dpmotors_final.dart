import 'dart:io';

void main() {
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
  for (int i = 0; i < digits.length - 1; i++) { // 1 
    for (int j = i + 1; j < digits.length; j++) { // 2, 3 ..
      var num = (digits[i]+digits[i]+digits[j]).toString();
      var numDouble = (digits[i]+digits[j]+digits[j]).toString();
      combinations.add(num);
      combinations.add(numDouble);
    } 

  }
  combinations.sort();

  print(combinations);
}
