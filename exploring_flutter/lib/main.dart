import 'package:exploring_flutter/screens/home_screen.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  Fimber.plantTree(DebugTree());
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exploring Flutter App",
      home: HomeScreen()
  ));
  Fimber.d("App Started Running");
}

