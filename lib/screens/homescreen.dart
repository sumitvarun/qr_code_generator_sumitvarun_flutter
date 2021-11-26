import 'package:flutter/material.dart';
import 'package:qr_code_generator_sumitvarun/Component/button_style_const.dart';
import 'package:qr_code_generator_sumitvarun/screens/qr_generate_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR CODE GENERATOR',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent[400],
          title: Text(
            "QR CODE GENERATOR",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          //leading: Icon(Icons.arrow_back),
          //leading: IconButton(
          //   icon: Icon(Icons.arrow_back),
          //   onPressed: () => Navigator.of(context).pop()),
          actions: [Icon(Icons.search)],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200),
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
                        "Generate your QR CODE HERE",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage:
                            AssetImage("lib/asset/sumitvarunpngcartoon.png"),
                      )
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
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: 200.0,
                  padding: EdgeInsets.only(top: 40.0, bottom: 20.0),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.orange),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      //  RoundedRectangleBorder(
                      //      borderRadius: BorderRadius.circular(5.0),
                      //      side: BorderSide(color: Colors.blue[50])),
                      //  ),
                      overlayColor:
                          MaterialStateProperty.all<Color>(Colors.pink[700]),
                    ),
                    // Within the `FirstRoute` widget
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QrGenerater()),
                      );
                    },
                    child: Text("Scan QR Code"),
                  ),
                ),
                //scan qr code button start here
                Container(
                  width: 200.0,
                  padding: EdgeInsets.only(top: 02.0, bottom: 02.0),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.redAccent[400]),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      //  RoundedRectangleBorder(
                      //      borderRadius: BorderRadius.circular(18.0),
                      //      side: BorderSide(color: Colors.black)),
                      // ),
                      overlayColor: MaterialStateProperty.all<Color>(
                          Colors.blueAccent[400]),
                    ),
                    // Within the `FirstRoute` widget
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QrGenerater()),
                      );
                    },
                    child: Text("Generate QR Code "),
                  ),
                ),
                //scan qr code button end here
              ],
            ),
          ),
        ),
      ),
    );
  }
}
