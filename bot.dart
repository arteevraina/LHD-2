// This script will help you play.
// Rock Paper Scissors with your Computer in Terminal.
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  printChoiceMessage();

  // Choices available are stored in choices array.
  final List<String> _choices = ["Rock", "Paper", "Scissor"];

  while (true) {
    // Take input from userChoice.
    int? userChoice = int.parse(stdin.readLineSync()!);

    /// Check if [userChoice] is 5.
    // Print the choice message again.
    if (userChoice == 5) {
      printChoiceMessage();
      continue;
    }

    // +1 Added for min Limit of 1.
    giveResult(userChoice, _choices);

    stdout.write("Choose Again\n");
  }
}

void giveResult(int userChoice, List<String> _choices) {
  // +1 Added for min Limit of 1.
  int computerChoice = Random().nextInt(3) + 1;

  if (userChoice == computerChoice) {
    // -1 because index starts from zero.
    stdout.write("You both choose ${_choices[userChoice - 1]}\n\n");
  } else if (userChoice == 1 && (computerChoice == 2 || computerChoice == 3)) {
    // In this case the user will win.
    stdout.write("You won!!\n");
    stdout.write(
        "You choose ${_choices[userChoice - 1]}. Computer choose ${_choices[computerChoice - 1]}\n");
  } else if (computerChoice == 1 && (userChoice == 2 || userChoice == 3)) {
    // In this case the user will lose.
    stdout.write("You lost!!\n");
    stdout.write(
        "You choose ${_choices[userChoice - 1]}. Computer choose ${_choices[computerChoice - 1]}\n");
  } else if (userChoice == 2 && computerChoice == 3) {
    stdout.write("You lost!!\n");
    stdout.write(
        "You choose ${_choices[userChoice - 1]}. Computer choose ${_choices[computerChoice - 1]}\n");
  } else if (userChoice == 3 && computerChoice == 2) {
    stdout.write("You won!!\n");
    stdout.write(
        "You choose ${_choices[userChoice - 1]}. Computer choose ${_choices[computerChoice - 1]}\n");
  }
}

void printChoiceMessage() {
  // Show the user the choice to make.
  stdout.write("""Welcome to Play Rock Paper Scissors 
1 -------------------> Rock
2 -------------------> Paper
3 -------------------> Scissors
5 -------------------> Print this message again
0 -------------------> Exit\n
""");
  stdout.write("Make your choice!\n");
}
