import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qr_code_generator_sumitvarun/screens/homescreen.dart';

import 'welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            child: Image(
              image: AssetImage("lib/asset/icons8-qr-code-96.png"),
              height: 200,
              width: 200,
            ),
          ),
          Container(
            child: Text(
              "QR Code Generator",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
