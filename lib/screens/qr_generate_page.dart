import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/src/material/colors.dart';

// ignore: camel_case_types
class QrGenerater extends StatefulWidget {
  // const QrGenerater({key}) : super(key: key);

  @override
  _QrGeneraterState createState() => _QrGeneraterState();
}

class _QrGeneraterState extends State<QrGenerater> {
  final globalKey = GlobalKey();
  File file;
  String _dataString = "Hello from this QR";
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[350],
        title: Text(
          "QRGEN",
          style: GoogleFonts.exo2(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 50,
          ),
        ),
        centerTitle: true,
        // leading: Icon(Icons.arrow_back),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop()),
        actions: [Icon(Icons.search)],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50.0, bottom: 40.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Generate Your QR CODE Here",
                      style: GoogleFonts.exo2(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Image(
                      image: AssetImage(
                          'lib/asset/QR GEN-logos/QR GEN-logos.jpeg'),
                      width: 60.0,
                      height: 60.0,
                    ),
                    // CircleAvatar(
                    //  radius: 50.0,
                    //  backgroundImage:
                    // AssetImage("lib/asset/sumitvarunpngcartoon.png"),
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(2000),
                bottomRight: Radius.circular(1000))),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              RepaintBoundary(
                key: globalKey,
                child: QrImage(
                  backgroundColor: Colors.white,
                  size: 150, //size of the QrImage widget.
                  data: _dataString,
                  gapless: false,
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
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
                onPressed: () async {
                  setState(() {
                    _dataString = _textController.text;
                  });
                },
                child: Text("CREATE QR CODE"),
              ),
              ElevatedButton(
                child: Text("Share"),
                onPressed: _captureAndSharePng,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _captureAndSharePng() async {
    try {
      RenderRepaintBoundary boundary =
          globalKey.currentContext.findRenderObject();
      var image = await boundary.toImage();
      ByteData byteData = await image.toByteData(format: ImageByteFormat.png);
      Uint8List pngBytes = byteData.buffer.asUint8List();
      final tempDir = await getTemporaryDirectory();
      final file = await new File('${tempDir.path}/image.png').create();
      await file.writeAsBytes(pngBytes);
      final channel = const MethodChannel('channel:me.alfian.share/share');
      channel.invokeMethod('shareFile', 'image.png');
    } catch (e) {
      print(e.toString());
    }
  }
}
