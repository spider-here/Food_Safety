import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_safety/Utils/quizModel.dart';

class quizzes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return quizzesState();
  }
}

class quizzesState extends State {
  static String _sampleImgUrl =
      "https://media.istockphoto.com/photos/social-media-and-digital-online-concept-woman-using-smartphone-picture-id1288271580";
  List<quizModel> _quiz = [];
  DatabaseReference dbRef = FirebaseDatabase.instance.reference();
  int _quizActiveIndex = 0;
  int _radioValue = 1;

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
                      image: AssetImage("assets/images/logo.png",), fit: BoxFit.fill)),
            ),
            Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                            style: BorderStyle.solid)),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: infalteQuizRadios(_quizActiveIndex)
                      )
                    )),
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

  getQuizData(){
    dbRef = dbRef.child("quiz");
    dbRef.onChildAdded.listen((event) {setState(() {
      _quiz.add(quizModel.fromSnapshot(event.snapshot));
    });});
    dbRef.onChildChanged.listen((event) {
      var oldEntry = _quiz.singleWhere((entry) {
        return entry.id == event.snapshot.key;
      });

      setState(() {
        _quiz[_quiz.indexOf(oldEntry)] =
            quizModel.fromSnapshot(event.snapshot);
      });
    });
  }

  Widget infalteQuizRadios(int index){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text(_quiz[index].question, style: TextStyle(fontSize: 16.0)),
      RadioListTile(value: 2, groupValue: _radioValue, onChanged: (val){
        setState(() {
          _radioValue=val as int;
          if(_quiz[index].option_one==_quiz[index].correct_option){
            if(_quizActiveIndex == _quiz.length-1){
              _quizActiveIndex=0;
            }
            else{
              _quizActiveIndex++;
            }
            final snackBar = SnackBar(content: Icon(Icons.done, size: 40.0, color: Colors.blue,),
              backgroundColor: Colors.transparent,
              duration: Duration(milliseconds: 300),
              elevation: 0.0,);
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
          else{
            final snackBar = SnackBar(content: Icon(Icons.close, size: 40.0, color: Colors.red,),
              backgroundColor: Colors.transparent,
              duration: Duration(milliseconds: 200),
              elevation: 0.0,);
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        });
        },
        title: Text(_quiz[index].option_one), dense: true,),
      RadioListTile(value: 3, groupValue: _radioValue, onChanged: (val){
        setState(() {
          _radioValue=val as int;
          if(_quiz[index].option_two==_quiz[index].correct_option){
            if(_quizActiveIndex == _quiz.length-1){
              _quizActiveIndex=0;
            }
            else{
              _quizActiveIndex++;
            }
            final snackBar = SnackBar(content: Icon(Icons.done, size: 40.0, color: Colors.blue,),
              backgroundColor: Colors.transparent,
              duration: Duration(milliseconds: 300),
              elevation: 0.0,);
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
          else{
            final snackBar = SnackBar(content: Icon(Icons.close, size: 40.0, color: Colors.red,),
              backgroundColor: Colors.transparent,
              duration: Duration(milliseconds: 200),
              elevation: 0.0,);
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        });
      }, title: Text(_quiz[index].option_two), dense: true,),
      RadioListTile(value: 4, groupValue: _radioValue, onChanged: (val){
        setState(() {
          _radioValue=val as int;
          if(_quiz[index].option_three==_quiz[index].correct_option){
            if(_quizActiveIndex == _quiz.length-1){
              _quizActiveIndex=0;
            }
            else{
              _quizActiveIndex++;
            }
            final snackBar = SnackBar(content: Icon(Icons.done, size: 40.0, color: Colors.blue,),
              backgroundColor: Colors.transparent,
              duration: Duration(milliseconds: 300),
              elevation: 0.0,);
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
          else{
            final snackBar = SnackBar(content: Icon(Icons.close, size: 40.0, color: Colors.red,),
              backgroundColor: Colors.transparent,
              duration: Duration(milliseconds: 200),
              elevation: 0.0,);
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        });
      }, title: Text(_quiz[index].option_three), dense: true,),
      RadioListTile(value: 5, groupValue: _radioValue, onChanged: (val){
        setState(() {
          _radioValue=val as int;
          if(_quiz[index].option_four==_quiz[index].correct_option){
            if(_quizActiveIndex == _quiz.length-1){
              _quizActiveIndex=0;
            }
            else{
              _quizActiveIndex++;
            }
            final snackBar = SnackBar(content: Icon(Icons.done, size: 40.0, color: Colors.blue,),
            backgroundColor: Colors.transparent,
            duration: Duration(milliseconds: 300),
            elevation: 0.0,);
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
          else{
            final snackBar = SnackBar(content: Icon(Icons.close, size: 40.0, color: Colors.red,),
              backgroundColor: Colors.transparent,
              duration: Duration(milliseconds: 200),
              elevation: 0.0,);
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        });
      }, title: Text(_quiz[index].option_four), dense: true,),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    getQuizData();
  }
}
