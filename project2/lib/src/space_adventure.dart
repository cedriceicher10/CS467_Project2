// Imports
import 'dart:io';
import 'dart:math';
import 'planetary_system.dart';

class SpaceAdventure {
  final PlanetarySystem? planetarySystem;
  SpaceAdventure({this.planetarySystem});

  // Starts the space adventure
  void start() {
    printGreeting();
    printIntroduction(responseToPrompt('What is your name?'));
    print('Let\'s go on an adventure!\n');
    travel(promptForRandomOrSpecificDestination(
        'Shall I randomly choose a planet for you to visit? (Y or N)'));
  }

  // Prints the initial greeting for the user
  void printGreeting() {
    print('Welcome to the ${planetarySystem?.name}!\n'
        'There are ${planetarySystem?.numberOfPlanets} planets to explore.\n');
  }

  // Prints the introduction of the space adventure
  void printIntroduction(String? name) {
    print('Nice to meet you, $name. My name is Cedric, '
        'I\'m an old friend of Hal.');
  }

  // Prompts the user and returns their response
  String? responseToPrompt(String prompt) {
    print(prompt);
    return stdin.readLineSync();
  }

  // Travels to a random planet, pre-defined
  void travelToRandomPlanet() {
    var index = Random().nextInt(planetarySystem!.numberOfPlanets);
    travelTo(planetarySystem?.planets[index].name);
  }

  // Travels to a planet of the user's choice
  void travelTo(String? destination) {
    print('Traveling to $destination...\n');
    planetarySystem?.planets.forEach((planet) {
      if (planet.name == destination) {
        print('Arrived at ${planet.name}. ${planet.description}');
      }
    });
  }

  void travel(bool randomDestination) {
    if (randomDestination) {
      travelToRandomPlanet();
    } else {
      travelTo(responseToPrompt('Name the planet you would like to visit.'));
    }
  }

  // Travel to a random planet or user-choice
  bool promptForRandomOrSpecificDestination(String prompt) {
    String? answer;
    while (answer != 'Y' && answer != 'N') {
      answer = responseToPrompt(prompt);
      if (answer == 'Y') {
        return true;
      } else if (answer == 'N') {
        return false;
      } else {
        print('Sorry, I didn\'t quite get that. Please try again.');
      }
    }
    return false;
  }
}
