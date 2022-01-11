import 'dart:io';

void main(List<String> args) {
  // Take input from the keyboard.
  String? name = stdin.readLineSync();

  // If the input is null. Then we should return the function.
  if (name == null) {
    return;
  }

  /// Else call the [reverseString] function and return the reversed String.
  print(reverseString(name));
}

String reverseString(String inputString) {
  return inputString.split('').reversed.join();
}
