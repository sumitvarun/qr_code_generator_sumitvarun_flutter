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
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("lib/asset/QR GEN-logos/QR GEN-logos.jpeg"),
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                Container(
                  child: Column(
                    children: [
                      Image(
                        image:
                            AssetImage('lib/asset/SUMITVARUN-logos_black.png'),
                        height: 70,
                        width: 70,
                      ),
                      Text(
                        'SUMITVARUN',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
