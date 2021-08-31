import 'package:flutter/material.dart';
import 'package:schooldiary/Home%20page%20section/mainHomePage.dart';
import 'package:schooldiary/Home%20page%20section/sub%20screens/rollnumber.dart';
import 'package:schooldiary/Main%20Routs/SplashScreen.dart';
import 'package:schooldiary/Main%20Routs/bottomNavSection.dart';
import 'package:schooldiary/Main%20Routs/registrationPage.dart';

import 'School activity section/mainSchoolActivityPage.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // darkTheme: ThemeData.dark(),
      // home: RegistrationPage(),
      initialRoute:"/",
      routes: {"/":(context)=>BottomNavSection(),
               "/splashScreen":(context)=>SplashScreen(),
               "/registrationPage":(context)=>RegistrationPage(),
               "/schoolActivityPage":(context)=>SchoolActivityPage(),
               "/homepage":(context)=>HomePage(),
               "/rollNumber":(context)=>RollNumber()
              },
    );
  }
}