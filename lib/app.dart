import 'package:flutter/material.dart';

import 'screens/location_detail/location_detail.dart';
import 'screens/locations/locations.dart';
import 'style.dart';

const LocationsRoute = '/'; // Also base route by default
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      // routes: {}, // Only for very lite app !!if screens doesn't take params!! use with Navigator.pushNamed(context, '/route')
      theme: _themes(),
    );
  }

  ThemeData _themes() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        textTheme: TextTheme(headline6: AppBarTextStyle),
      ),
      textTheme:
          TextTheme(headline6: TittleTextStyle, bodyText2: BodyTextStyle),
    );
  }

  RouteFactory _routes() {
    // Function that define our routes and pass arguments
    return (settings) {
      Map<String, dynamic>? arguments =
          settings.arguments as Map<String, dynamic>?;
      // Screen that be returned
      Widget screen;
      // print(settings.name);
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments!['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
