import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class donate extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text("More"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/donate.png"), fit: BoxFit.fill)),
            ),
            Divider(color: Colors.grey, thickness: 1.0,),
            ListTile(
              title: Text("Donate Online"),
              trailing: Icon(Icons.navigate_next),
            ),
            Divider(color: Colors.grey, thickness: 1.0,),
            ListTile(
              title: Text("Donate Via Phone"),
              trailing: Icon(Icons.navigate_next),
            ),
            Divider(color: Colors.grey, thickness: 1.0,),
          ]),
        ),
      ),
    );
  }
}