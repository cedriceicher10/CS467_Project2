import 'dart:io';

void main(List<String> arguments) {
  print('Welcome to the Solar System!\n'
      'There are 8 planets to explore.\n'
      'What is your name?');

  final name = stdin.readLineSync();

  print('Nice to meet you, $name. My name is Cedric, '
      'I\'m an old friend of Hal.');
  print('Let\'s go on an adventure!\n'
      'Shall I randomly choose a planet for you to visit? (Y or N)');

  var answer;
  while (answer != 'Y' && answer != 'N') {
    answer = stdin.readLineSync();
    if (answer == 'Y') {
      print('Uranus! Smelly but awe-inspiring.');
    } else if (answer == 'N') {
      print('Name the planet you would like to visit.');

      final planetName = stdin.readLineSync();

      print('Traveling to $planetName...\n'
          'Arrived at $planetName. '
          'Not my first choice destination, but nice all the same.');
    } else {
      print('Sorry, I didn\'t quite get that. Please try again.');
    }
  }
}
