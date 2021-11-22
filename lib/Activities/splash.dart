import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home/home.dart';

class splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:AnimatedSplashScreen(
          backgroundColor: Colors.white,
          splash: SizedBox.expand(
            child: Image.asset("assets/images/logo.png",),
          ),
          nextScreen: home(),
          duration: 2500,
          splashTransition: SplashTransition.fadeTransition,
          centered: true,
          splashIconSize: MediaQuery.of(context).size.width/2,
        )
    );
  }
  
}