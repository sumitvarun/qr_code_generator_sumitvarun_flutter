import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qr_code_generator_sumitvarun/screens/homescreen.dart';

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
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("lib/asset/QR GEN-logos/QR GEN-logos.jpeg"),
              height: 250,
              width: 250,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
