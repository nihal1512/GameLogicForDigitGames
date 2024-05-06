import 'dart:io';

void main() {
<<<<<<< HEAD
  int input = int.parse(stdin.readLineSync()!);

  List<String> output = [];
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      String out = "$i" + "$i" + "$j";
      List<String> inputSort = out.toString().split('').toList();
      inputSort.sort();
      out = inputSort.join();
      int unitSum = i + i + j;
      if (i + i + j == input || unitSum % 10 == input) {
        output.add(out);
      }
    }

    // output.add(out);
  }
  print(output);
}


// 116|| 224 || 233 || 288 || 440 || 
//    477 || 558|| 800 || 990
=======
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
>>>>>>> c4f76c1c763171ef37efaa85bfd458c5b2629867
