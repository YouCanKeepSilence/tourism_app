import 'package:flutter/material.dart';
import 'package:flutter_youtube_shop_app/screens/location_detail/location_detail.dart';

import 'style.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationDetail(),
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(textTheme: TextTheme(headline6: AppBarTextStyle)),
          textTheme:
              TextTheme(headline6: TittleTextStyle, bodyText2: BodyTextStyle)),
    );
  }
}
