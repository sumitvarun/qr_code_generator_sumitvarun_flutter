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
  onPrimary: Colors.black87,
  primary: Colors.grey[300],
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
  primary: Colors.black87,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
).copyWith(
  side: MaterialStateProperty.resolveWith<BorderSide>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed))
        return BorderSide(
          color: Theme.of(context).colorScheme.primary,
          width: 1,
        );
      return null; // Defer to the widget's default.
    },
  ),
);

//OutlinedButton(
//  style: outlineButtonStyle,
//  onPressed: () { },
 // child: Text('Looks like an OutlineButton'),
//)
