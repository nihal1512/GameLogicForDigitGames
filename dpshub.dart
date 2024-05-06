import 'dart:io';

void main() {
  int input = int.parse(stdin.readLineSync()!);

  List<String> output = [];

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      String out = "$i" + "$i" + "$j";

      List<String> inputSort = out.toString().split('').toList();

      inputSort.sort();

      if (inputSort.contains('0')) {
        inputSort.remove('0');
        inputSort.add('0');
        inputSort.remove('0');
        inputSort.add('0');
      }

      out = inputSort.join();

      int unitSum = i + i + j;

      if ((i + i + j == input || unitSum % 10 == input) && i != j) {
        output.add(out);
      }
    }

    // output.add(out);
  }
  output.sort();
  print(output);
}


// 116|| 224 || 233 || 288 || 440 || 
//    477 || 558|| 800 || 990
