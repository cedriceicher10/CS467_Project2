class Planet {
  String? name;
  String? description;

  Planet({this.name, this.description});

  Planet.nullPlanet()
      : name = 'NullPlanet',
        description = 'NullDescription';
}
