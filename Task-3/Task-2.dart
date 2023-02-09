import 'dart:io';

void main() {
  print("Enter number of elements: ");
  int n = int.parse(stdin.readLineSync().trim());
  List<int> elements = [];
  for (var i = 0; i < n; i++) {
    print("Enter element $i: ");
    int currentElement = int.parse(stdin.readLineSync().trim());
    elements.add(currentElement);
  }

  print("Elements entered: ");
  for (var element in elements) {
    if(n<5){
    print(element);
    }
  }
}