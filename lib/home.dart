import 'file:///C:/Users/antho/AndroidStudioProjects/cooklme/lib/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'details.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

var selectedItem = 0;
List pages = [
  DetailsPage(),
  DetailsPage(),
  DetailsPage(),
  DetailsPage(),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedItem],
      backgroundColor: kBackgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kBottomNavBackgroundColor,
        selectedItemColor: kBottomSelectedItemColor,
        iconSize: 27.0,
        currentIndex: selectedItem,
        unselectedLabelStyle: TextStyle(color: kBottomUnselectedLabelColor),
        unselectedItemColor: kUnselectedItemColor,
        onTap: (curIndex) {
          setState(() {
            selectedItem = curIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: kBackgroundColor,
            icon: Icon(Icons.home),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kBottomSelectedItemColor,
              ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: kBackgroundColor,
            icon: Icon(Icons.search),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kBottomSelectedItemColor,
              ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: kBackgroundColor,
            icon: Icon(Icons.camera_alt),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kBottomSelectedItemColor,
              ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: kBackgroundColor,
            icon: Icon(Icons.person_outline),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kBottomSelectedItemColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
