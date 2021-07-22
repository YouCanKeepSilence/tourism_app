import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _assetPath;

  ImageBanner(this._assetPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: 200.0),
      decoration: BoxDecoration(color: Colors.grey),
      // To placehold if image not here for loading from server
      child: Image.asset(this._assetPath,
          fit: BoxFit.cover), // crop image by container
    );
  }
}
