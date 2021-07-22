import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_block.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Hello')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner("assets/images/header-thai.jpeg"),
            TextBlock(Colors.red),
            TextBlock(Colors.green),
            TextBlock(Colors.blue),
        ]));
  }
}
