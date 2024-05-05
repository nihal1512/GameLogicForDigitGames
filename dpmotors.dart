// List<String> generateCombinations(int input) {
//   List<String> inputDigits = input.toString().split('').map((e) => e.toString()).toList()..sort();
//   List<String> combinations = [];

//   for (int i = 0; i < inputDigits.length - 2; i++) {
//     for (int j = i; j < inputDigits.length - 1; j++) {
//       for (int k = j; k < inputDigits.length; k++) {
//         if (inputDigits[i] == inputDigits[j] && inputDigits[j] == inputDigits[k]) {
//         combinations.add(inputDigits[i] + inputDigits[j] + inputDigits[k]);
//         } else if (inputDigits[i] == inputDigits[j] || inputDigits[j] == inputDigits[k]) {
//           combinations.add(inputDigits[i] + inputDigits[j] + inputDigits[k]);
//         } else {
//           combinations.add(inputDigits[i] + inputDigits[j] + inputDigits[k]);
//         }
//       }
//     }
//   }

//   return combinations;
// }

import "dart:io";

void main() {
  print("Enter number");

  Set<int> usedNumbers = {}; //

  int input = int.parse(stdin.readLineSync()!);

  // int input = int.parse(inputStr)
  input.sort()

  List<int> inputSort = input.split('').map(int.parse).toList();



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

// copied - duplicate checking 
  for (int digit in digits) {
    if (usedNumbers.contains(digit)) {
      print('Error: You cannot enter the same number twice.');
      return;
    }
    usedNumbers.add(digit);
  }
  
  List<String> number = [];


  List<String> sortedNumber =
      input.toString().split('').map((e) => e.toString()).toList()..sort();

  for (int i = 0; i < sortedNumber.length - 1; i++) { // 1 
    for (int j = i + 1; j < sortedNumber.length; j++) { // 2, 3 ..
      var num = sortedNumber[i]+sortedNumber[i]+sortedNumber[j];
      var numDouble = sortedNumber[i]+sortedNumber[j]+sortedNumber[j];
      number.add(num);
      number.add(numDouble);
    } 

  }
  number.sort();

  print(number);
}

// 112 113, 122, 133, 223, 233
