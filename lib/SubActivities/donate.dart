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
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"), fit: BoxFit.fill)),
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