import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _assetPath;
  final double _maxHeight;

  ImageBanner(assetPath, [maxHeight = 250.0]): this._assetPath = assetPath, this._maxHeight = maxHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: this._maxHeight),
      decoration: BoxDecoration(color: Colors.grey),
      // To placehold if image not here for loading from server
      child: Image.asset(this._assetPath,
          fit: BoxFit.cover), // crop image by container
    );
  }
}
