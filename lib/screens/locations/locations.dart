import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/location.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Imitate loading
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(title: Text('All locations')),
      body: ListView(
        children: locations
            .map(
              (location) => GestureDetector(
                child: Text(location.name),
                onTap: () => _onLocationTap(context, location.id),
              ),
            )
            .toList(),
      ),
    );
  }

  void _onLocationTap(BuildContext context, int locationId) {
    Navigator.pushNamed(context, LocationDetailRoute,
        arguments: {"id": locationId});
  }
}
