import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_safety/SubActivities/quizFinish.dart';
import 'package:food_safety/Utils/quizModel.dart';

class quiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return quizState();
  }
}

class quizState extends State<StatefulWidget> {
  List<quizModel> _quiz = [];
  DatabaseReference dbRef = FirebaseDatabase.instance.reference();
  int _quizActiveIndex = 0;
  int _radioValue = 1;
  bool showFeedback = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text("Question# " + _quiz[_quizActiveIndex].id),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.4,
              padding: EdgeInsets.all(20.0),
              child: infalteQuizRadios(_quizActiveIndex),
            )
          ),
          Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("Select the correct option to move towards next question.", style: TextStyle(fontSize: 10.0),),
            )
        ],
      ),
    );
  }

  getQuizData() {
    dbRef = dbRef.child("quiz");
    dbRef.onChildAdded.listen((event) {
      setState(() {
        _quiz.add(quizModel.fromSnapshot(event.snapshot));
      });
    });
    dbRef.onChildChanged.listen((event) {
      var oldEntry = _quiz.singleWhere((entry) {
        return entry.id == event.snapshot.key;
      });

      setState(() {
        _quiz[_quiz.indexOf(oldEntry)] = quizModel.fromSnapshot(event.snapshot);
      });
    });
  }

  Widget infalteQuizRadios(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.all(10.0)),
        Text(_quiz[index].question,
            style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic)),
        Padding(padding: EdgeInsets.all(10.0)),
        RadioListTile(
          value: 2,
          groupValue: _radioValue,
          activeColor: Colors.pinkAccent,
          onChanged: (val) {
            setState(() {
              _radioValue = val as int;
              if (_quiz[index].option_one == _quiz[index].correct_answer) {
                showFeedback = false;
                if (_quizActiveIndex == _quiz.length - 1) {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>quizFinish()));
                } else {
                  _quizActiveIndex++;
                }
                final snackBar = SnackBar(
                  content: Icon(
                    Icons.done,
                    size: 40.0,
                    color: Colors.blue,
                  ),
                  backgroundColor: Colors.transparent,
                  duration: Duration(milliseconds: 300),
                  elevation: 0.0,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              } else {
                showFeedback = true;
                final snackBar = SnackBar(
                  content: Icon(
                    Icons.close,
                    size: 40.0,
                    color: Colors.red,
                  ),
                  backgroundColor: Colors.transparent,
                  duration: Duration(milliseconds: 200),
                  elevation: 0.0,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            });
          },
          title: Text(
            _quiz[index].option_one,
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          dense: true,
        ),
        Padding(padding: EdgeInsets.all(5.0)),
        RadioListTile(
          value: 3,
          groupValue: _radioValue,
          activeColor: Colors.pinkAccent,
          onChanged: (val) {
            setState(() {
              _radioValue = val as int;
              if (_quiz[index].option_two == _quiz[index].correct_answer) {
                showFeedback = false;
                if (_quizActiveIndex == _quiz.length - 1) {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>quizFinish()));
                } else {
                  _quizActiveIndex++;
                }
                final snackBar = SnackBar(
                  content: Icon(
                    Icons.done,
                    size: 40.0,
                    color: Colors.blue,
                  ),
                  backgroundColor: Colors.transparent,
                  duration: Duration(milliseconds: 300),
                  elevation: 0.0,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              } else {
                showFeedback = true;
                final snackBar = SnackBar(
                  content: Icon(
                    Icons.close,
                    size: 40.0,
                    color: Colors.red,
                  ),
                  backgroundColor: Colors.transparent,
                  duration: Duration(milliseconds: 200),
                  elevation: 0.0,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            });
          },
          title: Text(
            _quiz[index].option_two,
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          dense: true,
        ),
        Padding(padding: EdgeInsets.all(5.0)),
        RadioListTile(
          value: 4,
          groupValue: _radioValue,
          activeColor: Colors.pinkAccent,
          onChanged: (val) {
            setState(() {
              _radioValue = val as int;
              if (_quiz[index].option_three == _quiz[index].correct_answer) {
                showFeedback = false;
                if (_quizActiveIndex == _quiz.length - 1) {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>quizFinish()));
                } else {
                  _quizActiveIndex++;
                }
                final snackBar = SnackBar(
                  content: Icon(
                    Icons.done,
                    size: 40.0,
                    color: Colors.blue,
                  ),
                  backgroundColor: Colors.transparent,
                  duration: Duration(milliseconds: 300),
                  elevation: 0.0,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              } else {
                showFeedback = true;
                final snackBar = SnackBar(
                  content: Icon(
                    Icons.close,
                    size: 40.0,
                    color: Colors.red,
                  ),
                  backgroundColor: Colors.transparent,
                  duration: Duration(milliseconds: 200),
                  elevation: 0.0,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            });
          },
          title: Text(
            _quiz[index].option_three,
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          dense: true,
        ),
        Padding(padding: EdgeInsets.all(10.0)),
        Visibility(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(10.0),
              color: Colors.red.shade100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Feedback", style: TextStyle(fontWeight: FontWeight.bold),),
      Text(_quiz[index].feedback),
    ],
    )
            ),
          visible: showFeedback,
        )
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    getQuizData();
  }
}
