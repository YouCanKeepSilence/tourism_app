import 'location_fact.dart';

class Location {
  final String name;
  final imagePath;
  final List<LocationFact> facts;

  Location(this.name, this.imagePath, this.facts);

  // Dummy loading function
  static List<Location> fetchAll() {
    return [
      Location('Thai waterfall', 'assets/images/header-thai.jpeg', [
        LocationFact('Summary',
            'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Thai, the sight\'s pleasures extend beyond the visual realm.'),
        LocationFact('How to Get There',
            'Go to the Main Thailand airport, with several terminals, is located 2 kilometres south of the city and is also known as Thaiport:). Thaiport can also be reached by transport links from other regional airports.'),
      ]),
    ];
  }
}
