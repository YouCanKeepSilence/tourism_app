import 'package:flutter/material.dart';
import '../../components/image_banner.dart';
import '../../style.dart';

class LocationItem extends StatelessWidget {
  final String _name;
  final String _imagePath;
  final double _height = 300.0;

  LocationItem(this._name, this._imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this._height,
      child: Stack(
        children: [
          ImageBanner(this._imagePath, this._height),
          Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(5),
                      bottom: Radius.circular(10),
                    ),
                  ),
                  height: this._height / 3,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      this._name,
                      style: LocationItemTextStyle,
                    ),
                  ),
                ),
              ]),
        ],
      ),
    );
  }
}
