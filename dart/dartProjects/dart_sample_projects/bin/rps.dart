import 'dart:io';
import 'dart:math';

void main() {
  var options = ['rock', 'paper', 'scissors'];
  var rng = Random();

  while (true) {
    print('Choose rock, paper, or scissors (or type exit to quit):');
    String? userInput = stdin.readLineSync()?.toLowerCase();

    if (userInput == 'exit') {
      print('Thanks for playing!');
      break;
    }

    if (!options.contains(userInput)) {
      print('Invalid choice, please try again.');
      continue;
    }

    String computerChoice = options[rng.nextInt(3)];
    print('Computer chose: $computerChoice');

    if (userInput == computerChoice) {
      print('It\'s a tie!');
    } else if ((userInput == 'rock' && computerChoice == 'scissors') ||
               (userInput == 'paper' && computerChoice == 'rock') ||
               (userInput == 'scissors' && computerChoice == 'paper')) {
      print('You win!');
    } else {
      print('You lose!');
    }

    print('');
  }
}
