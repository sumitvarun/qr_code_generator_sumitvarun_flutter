import 'package:flutter/material.dart';
import 'package:qr_code_generator_sumitvarun/screens/homescreen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Generator',
      home: Scaffold(
        body: Center(
            child: Column(
          children: <Widget>[
            Container(
              width: 200.0,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.redAccent[400]),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  //  RoundedRectangleBorder(
                  //      borderRadius: BorderRadius.circular(18.0),
                  //      side: BorderSide(color: Colors.black)),
                  // ),
                  overlayColor:
                      MaterialStateProperty.all<Color>(Colors.blueAccent[400]),
                ),
                // Within the `FirstRoute` widget
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text("Welcome"),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
