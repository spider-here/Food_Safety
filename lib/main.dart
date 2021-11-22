import 'package:flutter/material.dart';
import '/Activities/splash.dart';

void main() {
  runApp(new MaterialApp(
    title: "Food Safety",
    home: splash(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
      canvasColor: Colors.blue,
      backgroundColor: Colors.white
    ),
  ));
}