import 'dart:js';

import 'package:flutter/material.dart';

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.black87,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);

//TextButton(
//  style: flatButtonStyle,
//  onPressed: () { },
//  child: Text('Looks like a FlatButton'),
//)

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.red,
  primary: Colors.blue,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);

//ElevatedButton(
//  style: raisedButtonStyle,
//  onPressed: () { },
//  child: Text('Looks like a RaisedButton'),
//)

final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
  primary: Colors.black,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);

//OutlinedButton(
//  style: outlineButtonStyle,
//  onPressed: () { },
 // child: Text('Looks like an OutlineButton'),
//)
