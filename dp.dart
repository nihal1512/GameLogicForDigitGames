import 'dart:io';

void main() {
  print("Enter number");
  int input = int.parse(stdin.readLineSync()!);
  List<int> numbersList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

  List<String> numberList = [];
  int iteration = 0;

  if (iteration < 12) {
    for (int i = 0; i < numbersList.length; i++) {
      for (int j = i; j < numbersList.length; j++) {
        for (int k = j; k < numbersList.length; k++) {
          if (i == j || j == k && i != k) {
            int sum = numbersList[i] + numbersList[j] + numbersList[k];
            if (sum % 10 == input) {
              String concatenate =
                  "${numbersList[i]}" + "${numbersList[j]}" + "${numbersList[k]}";
              numberList.add(concatenate);
            }
          }
          iteration++;
        }
      }
    }
  }

  print(numberList);
}
