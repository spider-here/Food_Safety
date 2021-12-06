import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_safety/SubActivities/quiz.dart';
import 'package:food_safety/Utils/quizModel.dart';

class quizzes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return quizzesState();
  }
}

class quizzesState extends State {
  List<quizModel> _quiz = [];
  DatabaseReference dbRef = FirebaseDatabase.instance.reference();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text("Quizzes"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Card(
              margin: EdgeInsets.all(0.0),
              color: Theme.of(context).backgroundColor,
              elevation: 4.0,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Test Your Risk of Listeria",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  // Divider(thickness: 1, color: Colors.grey,)
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/logo.png",
                      ),
                      fit: BoxFit.fill)),
            ),
            Padding(
                padding: EdgeInsets.all(20.0),
                // child: Container(
                //     width: MediaQuery.of(context).size.width,
                //     height: MediaQuery.of(context).size.height / 3,
                //     decoration: BoxDecoration(
                //         border: Border.all(
                //             color: Colors.black,
                //             width: 1.0,
                //             style: BorderStyle.solid)),
                //     child: Padding(
                //       padding: EdgeInsets.all(10.0),
                      // child: infalteQuizRadios(_quizActiveIndex)
                      child: Column(
                        children: [
                      Padding(
                      padding: EdgeInsets.all(20.0)),
                          Text(
                              "Each question will have three options and upon selection"
                                  " you will get to know about whether your answer is correct or not."
                                  " Feedback will also be provided.",
                          style: TextStyle(fontWeight: FontWeight.bold),),
                          Padding(
                              padding: EdgeInsets.all(20.0)),
                          ListTile(title: Text("Start Quiz", style: TextStyle(color: Colors.white),), trailing: Icon(Icons.arrow_forward, color: Colors.white,),
                          tileColor: Colors.pinkAccent, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>quiz())),),
                        ],
                      ),
                    )
      // )
    // ),
            // Padding(
            //     padding: EdgeInsets.all(20.0),
            //     child: ElevatedButton(
            //       onPressed: () {},
            //       child: Text("Submit"),
            //       style: ButtonStyle(
            //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //             RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(20.0))),
            //       ),
            //     ))
          ]),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
