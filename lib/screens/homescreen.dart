import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:share_plus/share_plus.dart';

// ignore: camel_case_types
class homescreen extends StatefulWidget {
  const homescreen({key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  static const double _topSectionTopPadding = 50.0;
  static const double _topSectionBottomPadding = 20.0;
  static const double _topSectionHeight = 50.0;

  final key = GlobalKey();
  File file;
  String _dataString = "Hello from this QR";
  String _inputErrorText;
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent[400],
        title: Text(
          "QR CODE GENERATOR",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RepaintBoundary(
              child: Container(
                color: Colors.white,
                child: QrImage(
                  size: 320, //size of the QrImage widget.
                  data: _dataString,
                  gapless: false,
                ),
              ),
              //QrImage(
              //data: _dataString,
              //version: QrVersions.auto,
              //size: 320,
              //gapless: false,
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Enter Name',
                  hintText: 'Enter Your Name'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
              onPressed: () async {
                setState(() {
                  _dataString = _textController.text;
                  _inputErrorText = null;
                });
              },
              child: Text("CREATE QR CODE"),
            ),
            ElevatedButton(
              child: Text("Share"),
              onPressed: () async {},
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            Spacer(),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
