import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_safety/Utils/expansionItem.dart';
import 'package:food_safety/Utils/textContent.dart';

class foods extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return foodsState();
  }
}

class foodsState extends State {
  List<expansionItem> item = <expansionItem>[
    expansionItem(header: "Bamboo shoots and cassava", body: textContent.Casava_Bamboo),
    expansionItem(header: "Casseroles, soups and stews", body: textContent.Casseroles_soups),
    expansionItem(header: "Bean and seed sprouts", body: textContent.Bean_seed),
    expansionItem(header: "Beef and lamb", body: textContent.Beef_lamb),
    expansionItem(header: "Mushrooms", body: textContent.Mushrooms),
    expansionItem(header: "Eggs", body: textContent.Eggs),
    expansionItem(header: "Fish", body: textContent.Fish),
    expansionItem(header: "Fruit and vegetables", body: textContent.Fruit_vegetables),
    expansionItem(header: "Fermented foods", body: textContent.Fermented_foods),
    expansionItem(header: "Milk and cheese", body: textContent.Milk_cheese),
    expansionItem(header: "Pasta and rice", body: textContent.Pasta_rice),
    expansionItem(header: "Pork", body: textContent.Pork),
    expansionItem(header: "Rockmelons(canteloupes)", body: textContent.Rockmelons),
    expansionItem(header: "Turkey", body: textContent.Turkey),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text("Foods"),
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
                      image: AssetImage("assets/images/foods.png",), fit: BoxFit.cover)),
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
