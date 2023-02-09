import 'dart:io';
void main (){
  print('please entre a word');
  String? word = stdin.readLineSync();
  String? reverse = word!.split('').reversed.join('');
  if(word == reverse){
    print('the word u entered is palindrome');
  }else{
    print('the word u entered is not palindrome');
  }
}
