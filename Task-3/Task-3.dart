import 'dart:io';
void main() {
  Map<String, String> birthdays = {
    "Albert Einstein": "03/14/1879",
    "Benjamin Franklin": "01/17/1706",
    "Ada Lovelace": "12/10/1815",
  };
  print("Enter birthday:");
  birthdays.keys.forEach((name)
   => print(name));//for each = for loop?
  
  print("Who birthday");
  String? name = stdin.readLineSync();

  if (birthdays.containsKey(name)) {

    print("$name birthday  = ${birthdays[name]}.");
  } else {
    print("birthday not correct $name.");

  }
}
