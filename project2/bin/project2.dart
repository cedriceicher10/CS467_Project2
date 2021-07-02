import 'package:project2/dart_space_adventure.dart';

void main() {
  SpaceAdventure(
          planetarySystem:
              PlanetarySystem(name: 'Solar System', planets: mockPlanets()))
      .start();
}

List<Planet> mockPlanets() {
  return [
    Planet(name: 'Mercury', description: 'A hot one.'),
    Planet(name: 'Venus', description: 'A sexy one.'),
    Planet(name: 'Earth', description: 'A familiar one.')
  ];
}
