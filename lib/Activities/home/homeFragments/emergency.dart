import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_safety/Activities/Utils/expansionItem.dart';

class emergency extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return emergencyState();
  }
}

class emergencyState extends State {
  static String _sampleImgUrl =
      "https://media.istockphoto.com/photos/social-media-and-digital-online-concept-woman-using-smartphone-picture-id1288271580";
  static String _sampleContent =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
      " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
      " Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
      " Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
      " Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
  List<expansionItem> item = <expansionItem>[
    expansionItem(header: "Plan ahead", body: _sampleContent),
    expansionItem(
        header: "Keep it clean! It's critical to practice basic hygeine",
        body: _sampleContent),
    expansionItem(header: "When the power goes off", body: _sampleContent),
    expansionItem(header: "Floods", body: _sampleContent),
    expansionItem(header: "After a fire", body: _sampleContent),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text("Emergency"),
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
                    title: Text("Food Safety in Emergencies",
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
                child: SizedBox(
                    width: double.maxFinite,
                    height: MediaQuery.of(context).size.height,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      children: [
                        ExpansionPanelList(
                          expansionCallback: (int index, bool isExpanded) {
                            setState(() {
                              item[index].isExpanded = !item[index].isExpanded;
                            });
                          },
                          children: item.map((expansionItem item) {
                            return ExpansionPanel(
                                canTapOnHeader: true,
                                headerBuilder:
                                    (BuildContext context, bool isExpanded) {
                                  return Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      // padding: EdgeInsets.all(10.0),
                                      children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 20.0),
                                            child: Text(
                                              item.header,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      ]);
                                },
                                isExpanded: item.isExpanded,
                                body: Container(
                                    padding: EdgeInsets.only(
                                        left: 20.0, right: 20.0, bottom: 20.0),
                                    child: Text(item.body)));
                          }).toList(),
                        )
                      ],
                    )))
          ]),
        ),
      ),
    );
  }
}
