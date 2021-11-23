import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_safety/Utils/expansionItem.dart';
import 'package:food_safety/Utils/textContent.dart';

class learn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return learnState();
  }
}

class learnState extends State {
  static String _sampleContent =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
      " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
      " Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
      " Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
      " Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

  List<expansionItem> item = <expansionItem>[
    expansionItem(header: "BBQs and picnics", body: textContent.BBQs),
    expansionItem(header: "Cooking temperatures", body: textContent.Temperatures),
    expansionItem(header: "Christmas", body: textContent.Christmas),
    expansionItem(header: "Chopping board", body: textContent.Chopping),
    expansionItem(header: "Cross contamination", body: textContent.Contamination),
    expansionItem(header: "Entertaining", body: textContent.Entertaining),
    expansionItem(header: "Food storage", body: textContent.Storage),
    expansionItem(header: "Fridges and freezers", body:textContent.Fridges),
    expansionItem(header: "Handwashing", body: textContent.Handwashing),
    expansionItem(header: "Leftovers", body: textContent.Leftovers),
    expansionItem(header: "Lunchboxes", body: textContent.Lunchboxes),
    expansionItem(header: "Overseas travelling", body: textContent.Travelling),
    expansionItem(header: "Power outages", body: textContent.Outages),
    expansionItem(header: "Shopping", body: textContent.Shopping),
    expansionItem(header: "Use by and best before dates", body: textContent.Dates),
    expansionItem(header: "Washing up", body: textContent.Washing),
    expansionItem(header: "What to do if you get food poisoning", body: textContent.Poisoning),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text("Learn"),
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
                    title: Text("Basics",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.navigate_next),
                    dense: true,
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
                      image: AssetImage("assets/images/learn.png",), fit: BoxFit.cover)),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                _sampleContent,
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("The Basics",
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
