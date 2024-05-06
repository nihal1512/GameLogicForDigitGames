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
  int input = int.parse(stdin.readLineSync()!);

  print("$input List one");

  List<String> inputSort = input.toString().split('').toList();
  inputSort.sort();

  // Move '0' to the end of the list
  inputSort.remove("0");
  inputSort.add("0");


  // for(int i=0; i<inputSort.length-2; i++) {
  //   if(inputSort[i] == 0) {
  //     inputSort.remove("0");
  //     inputSort.add("0");
  //   }
  // }

  print("$inputSort List two");

  List<String> number = [];

  for (int i = 0; i < inputSort.length - 1; i++) {
    for (int j = i + 1; j < inputSort.length; j++) {
      var num = inputSort[i] + inputSort[i] + inputSort[j];
      var numDouble = inputSort[i] + inputSort[j] + inputSort[j];
      number.add(num);
      number.add(numDouble);
    }
  }
  number.sort();

  print(number);
}