import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_safety/SubActivities/donate.dart';

class more extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return moreState();
  }
}

class moreState extends State {
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
                      image: AssetImage("assets/images/logo.png"),
                      fit: BoxFit.fill)),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),
            ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.black,
              ),
              title: Text("About Us"),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),
            ListTile(
              leading: Icon(
                Icons.perm_contact_cal,
                color: Colors.black,
              ),
              title: Text("Contact Us"),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),
            ListTile(
              leading: Icon(
                Icons.clean_hands,
                color: Colors.black,
              ),
              title: Text("Donate"),
              trailing: Icon(Icons.navigate_next),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => donate())),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),
            ListTile(
              leading: Icon(
                Icons.insert_link,
                color: Colors.black,
              ),
              title: Text("Link to the Website"),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),
            ListTile(
              leading: Icon(
                Icons.share,
                color: Colors.black,
              ),
              title: Text("Share"),
            ),
          ]),
        ),
      ),
    );
  }
}
