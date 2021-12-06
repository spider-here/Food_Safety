import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class quizFinish extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Icon(Icons.done, color: Colors.pinkAccent, size: 100.0,),
            Padding(
                padding: EdgeInsets.all(20.0)),
            Text("Well Done!\nYou have successfully completed the quiz.",
              style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 20.0, color: Colors.black), textAlign: TextAlign.center,),
            Spacer(),
            ElevatedButton(
              onPressed: ()=>Navigator.pop(context),
              child: Text("BACK TO MAIN"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pinkAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  )
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0)),
          ],
        ),
      )
    );
  }

}