import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_block.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Location Detail')),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner('assets/images/header-thai.jpeg'),
            TextBlock('Go hard', 'Tuc tuc'),
            TextBlock('Second paragraph', 'Second text'),
            TextBlock('Pow pow', 'GTX 1060'),
          ]),
    );
  }
}
