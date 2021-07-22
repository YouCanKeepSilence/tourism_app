import 'package:flutter/material.dart';

class TextBlock extends StatelessWidget {
  final Color _color;

  TextBlock(this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: this._color),
        child: Text('HELLO HELLO HELLO {this._color}')
    );
  }
}