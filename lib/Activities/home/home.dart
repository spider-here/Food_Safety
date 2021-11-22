import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homeFragments/emergency.dart';
import 'homeFragments/foods.dart';
import 'homeFragments/learn.dart';
import 'homeFragments/more.dart';
import 'homeFragments/quizzes.dart';

class home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return homeState();
  }

}

class homeState extends State{

  int _navIndex = 0;
  PageController _pageController = new PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0),),
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0),),
          child:BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            currentIndex: _navIndex,
            showSelectedLabels: true,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white24,
            showUnselectedLabels: false,
            elevation: 10.0,
            selectedIconTheme: IconThemeData(color: Colors.white, size: 35.0),
            unselectedIconTheme: IconThemeData(color: Colors.white, size: 25.0),
            onTap: (change){setState((){_navIndex=change;_pageController.jumpToPage(change);});},
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.cast_for_education,),
                label: "Learn",
              ),
              BottomNavigationBarItem(icon: Icon(Icons.fastfood,),
                label: "Foods",
              ),
              BottomNavigationBarItem(icon: Icon(Icons.report_problem,),
                label: "Emergency",
              ),
              BottomNavigationBarItem(icon: Icon(Icons.quiz,),
                label: "Quizzes",
              ),
              BottomNavigationBarItem(icon: Icon(Icons.more_horiz,),
                label: "More",
              ),
            ],),
        ),
      ),
      body: PageView(
        onPageChanged: (index){setState((){_navIndex=index;});},
        controller: _pageController,
        children: [
          learn(),
          foods(),
          emergency(),
          quizzes(),
          more()
        ],),
    );
  }

}