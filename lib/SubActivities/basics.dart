import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_safety/Utils/expansionItem.dart';

class basics extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return basicsState();
  }
}

class basicsState extends State {

  static String _sampleContent =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
      " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
      " Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
      " Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
      " Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

  List<expansionItem> item = <expansionItem>[
    expansionItem(header: "Clean", body: _sampleContent),
    expansionItem(header: "Chill", body: _sampleContent),
    expansionItem(header: "Cook", body: _sampleContent),
    expansionItem(header: "Separate", body: _sampleContent),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text("Basics"),
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
                      image: AssetImage("assets/images/logo.png",), fit: BoxFit.cover)),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
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
