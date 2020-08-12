import 'package:flutter/material.dart';

Widget bottomNavigationBar(BuildContext context, int index) {
  return Theme(
    data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
            caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
    child: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.view_list, size: 30.0),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bubble_chart, size: 30.0),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle, size: 30.0),
          title: Container(),
        ),
      ],
      currentIndex: index,
      onTap: (index) => _onTabTapped(context, index),
    ),
  );
}


void _onTabTapped(BuildContext context, int index) {
  String routName = "";
  switch(index) {
    case 0: {
      routName = "basic";
      break;
    }
    case 1: {
      routName = "scroll";
      break;
    }
    case 2: {
      routName = "buttons";
      break;
    }
  }

  Navigator.pushNamed(context, routName);
}

final routeNames = [""];