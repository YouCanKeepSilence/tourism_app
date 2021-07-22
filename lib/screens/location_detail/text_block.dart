import 'package:flutter/material.dart';

class TextBlock extends StatelessWidget {
  final String _title;
  final String _body;

  // Const can be only static in class
  static const double _hPad = 16.0;

  TextBlock(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            child: Text(this._title, style: Theme.of(context).textTheme.headline6),
            padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0)
        ),
        Container(
            child: Text(this._body, style: Theme.of(context).textTheme.bodyText2),
            padding: const EdgeInsets.fromLTRB(_hPad, 10.0, _hPad, 4.0)
        ),
      ],
    );
  }
}
