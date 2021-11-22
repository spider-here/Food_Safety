import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class quizzes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return quizzesState();
  }
}

class quizzesState extends State {
  static String _sampleImgUrl =
      "https://media.istockphoto.com/photos/social-media-and-digital-online-concept-woman-using-smartphone-picture-id1288271580";

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
                      image: NetworkImage(_sampleImgUrl), fit: BoxFit.fill)),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("How to handle riskier foods",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
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
                      child: Text("Questions"),
                    ))),
            Padding(
                padding: EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Submit"),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
