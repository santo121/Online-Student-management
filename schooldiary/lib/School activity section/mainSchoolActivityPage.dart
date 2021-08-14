import 'package:flutter/material.dart';

class SchoolActivityPage extends StatefulWidget {
  SchoolActivityPage({Key key}) : super(key: key);

  @override
  _SchoolActivityPageState createState() => _SchoolActivityPageState();
}

class _SchoolActivityPageState extends State<SchoolActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
      ),
    );
  }
}