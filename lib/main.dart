import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/Activities/splash.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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