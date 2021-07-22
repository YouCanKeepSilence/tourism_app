import 'package:flutter/material.dart';
import 'package:flutter_youtube_shop_app/screens/location_detail/text_block.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Hello')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextBlock(Colors.red),
            TextBlock(Colors.green),
            TextBlock(Colors.blue),
        ]));
  }
}
