import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class contact extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text("About Us"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Card(
                elevation: 4.0,
                margin: EdgeInsets.all(20.0),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(""),
                )
            )
        )
    );
  }

}