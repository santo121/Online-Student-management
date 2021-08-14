import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:schooldiary/Home%20page%20section/mainHomePage.dart';
import 'package:schooldiary/School%20activity%20section/mainSchoolActivityPage.dart';

class BottomNavSection extends StatefulWidget {
  BottomNavSection({Key key}) : super(key: key);

  @override
  _BottomNavSectionState createState() => _BottomNavSectionState();
}

class _BottomNavSectionState extends State<BottomNavSection> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
      bottomNavigationBar: buildBottomNavigation(),
    );
  }

  Widget buildBody() {
    switch (index) {
      
      case 1:
        return SchoolActivityPage();
      case 2:
        return SchoolActivityPage();
      case 0:
        default:
        return HomePage();
    }
  }

  Widget buildBottomNavigation() {
    return BottomNavyBar(
        backgroundColor: Colors.black,
        selectedIndex: index,
        itemCornerRadius: 14,
        containerHeight: 50,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              icon: Icon(Icons.home),
              inactiveColor: Colors.white,
              activeColor: Colors.green,
              textAlign: TextAlign.center,
              title: Text("Home")),
          BottomNavyBarItem(
              icon: Icon(Icons.sports_baseball),
              activeColor: Colors.green,
              textAlign: TextAlign.center,
              inactiveColor: Colors.white,
              title: Text("Activities")),
          BottomNavyBarItem(
              icon: Icon(Icons.mail_rounded),
              activeColor: Colors.green,
              textAlign: TextAlign.center,
              inactiveColor: Colors.white,
              title: Text("MSG Box")),
        ],
        onItemSelected: (index) => setState(() => this.index = index));
  }
}
