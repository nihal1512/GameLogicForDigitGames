import "dart:io";

void main() {

    print("Enter number");
    int input = int.parse(stdin.readLineSync()!);

    List<String> numberList = [];

    for (int i=0; i<9; i++) {
        int number = i+i+i;
        if(number%10 == input) {
            String concate = "$i"+"$i"+"$i";
            numberList.add(concate);
            break;
        }
    } 

    print(numberList);

}