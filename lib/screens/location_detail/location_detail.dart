import 'package:flutter/material.dart';
import '../../models/location.dart';
import '../../components/image_banner.dart';
import 'text_block.dart';

class LocationDetail extends StatelessWidget {

  final int _locationId;

  LocationDetail(this._locationId);

  @override
  Widget build(BuildContext context) {
    // Dummy loading, don't load in build real fetch all
    Location? currentLocation = Location.fetchById(this._locationId);

    return Scaffold(
      appBar: AppBar(title: Text(currentLocation!.name)),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(currentLocation.imagePath),
            ...this.mapLocationFacts(currentLocation),
          ]),
      // Or it can be ]..addAll(this.mapLocationFacts(currentLocation),) - cascade operator allow to use method on existing value
    );
  }

  List<Widget> mapLocationFacts(Location location) {
    return location.facts.map((fact) => TextBlock(fact.title, fact.text)).toList();
  }
}
