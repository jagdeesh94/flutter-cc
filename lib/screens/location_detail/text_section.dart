import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {

  final String _title;
  final String _body;
  static const double _hPad = 16.0; //only static fields can be declared const inside a class !

  TextSection(this._title,this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        //Padding widget instead of Container will also give the same result !
        Container(
          padding: const EdgeInsets.fromLTRB(_hPad,32.0,_hPad,4.0),
          child: Text(_title,style: Theme.of(context).textTheme.title),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(_hPad,10.0,_hPad,4.0),
          child: Text(_body,style: Theme.of(context).textTheme.body1),
        )
      ],
    );
  }
}
