import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class about extends StatelessWidget{
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
          child: Text("The Food Safety Information Council Ltd is a health promotion charity and the national voice for science-based, consumer-focused food safety information in Australia. We aim to reduce the number of Australians getting sick from food poisoning by providing simple, easy to follow consumer information on the handling, storage and preparation of food. Each year there are an estimated 4.1 million cases of food poisoning in Australia that result in 31,920 hospitalisations, 86 deaths and 1 million visits to doctors on average every year. \n\nThe Council was founded in 1997 as the Food Safety Campaign Group and incorporated in 2001 as the Food Safety Information Council. We are a health promotion charity ACN 614 547 241 and a company partially limited by guarantee ABN 58008715647. Our members include state and territory health and food safety agencies, local government, and leading professional, industry and community organisations.",
              style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold)),
        )
      )
    )
    );
  }

}