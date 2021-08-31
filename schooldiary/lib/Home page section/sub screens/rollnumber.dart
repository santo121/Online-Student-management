import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schooldiary/string_assets.dart';

class RollNumber extends StatefulWidget {
  const RollNumber({Key key}) : super(key: key);

  @override
  _RollNumberState createState() => _RollNumberState();
}

class _RollNumberState extends State<RollNumber> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        elevation: 0,
        title: Text(
          "Roll Number",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child:Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Text("10",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  SizedBox(width: 15),
                  Text(
                    "Your Rollnumber",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/1,
            child: ListView.builder(
                itemCount: studentName.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        child: Row(
                          children: [
                            SizedBox(width: 5),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 12,
                              child: Text(studentRollNO[index]),
                            ),
                            SizedBox(width: 5),
                            Text(
                              studentName[index].toUpperCase(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Divider(thickness: 2),
                    ],
                  );
             }),
          )
        ],
      ),
      )
    );
  }
}
      // color:Colors.green[400]
