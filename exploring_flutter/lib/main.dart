import 'dart:math';

import 'package:exploring_flutter/utils/AppAssets.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  Fimber.plantTree(DebugTree());
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exploring Flutter App",
      home: TestFirstScreen()));
  Fimber.d("App Started Running");
}

class TestFirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white70,
      child: ListView(
        padding: EdgeInsets.only(top: 50.0),
        children: <Widget>[
          ImageWidget(),
          Center(
            child: Text(
              "Flutter App",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.indigoAccent,
                fontSize: 40.0,
                fontFamily: "Roboto",
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AppAssets().getImageAsset("assets/images/flutter.png");
    Image image = Image(image: assetImage, width: 250.0, height: 250.0);
    return Container(padding: EdgeInsets.only(top: 20.0), child: image);
  }
}
