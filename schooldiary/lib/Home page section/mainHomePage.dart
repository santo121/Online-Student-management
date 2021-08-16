import 'package:flutter/material.dart';
import 'package:schooldiary/const.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ConstantValues consts = ConstantValues();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: consts.scaffoldKey,
      appBar: AppBar(
        title: Center(child: Text("Good morning Joseph")),
        elevation: 0,
        backgroundColor: Colors.green[400],
        leading: IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              consts.scaffoldKey.currentState.openDrawer();
            }),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10,),
                child: notificationIcon(notification:9),
              ),
              
            ],
      ),
      drawer: Drawer(),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[200]),
          child: Column(
            children: [
              Container(
               decoration: BoxDecoration(gradient: consts.gradientColorBG),
                child: Column(
                  children: [
                    // Container(
                    //   width: MediaQuery.of(context).size.width,
                    //   padding: EdgeInsets.only(left: 20, right: 20),
                    //   child: Center(
                    //     child: Text(
                    //       "Good morning Joseph",
                    //       style: TextStyle( fontSize: 20,color:Colors.white),
                    //     ),
                    //   ),
                    // ),
                  
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Center(
                    child: Text(
                      "The best brain of the nation may be found from the last benches of the class room...",
                      style: TextStyle( fontSize: 12,color:Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 20, right: 40),
                  child: Text(
                    "Abdul kalam",
                    style: TextStyle(
                        color:Colors.white,
                        fontSize: 16,
                        decoration: TextDecoration.combine([
                          TextDecoration.underline,
                        ])),
                    textAlign: TextAlign.end,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ],
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10,),
                child: ListView(
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .02,
                      right: MediaQuery.of(context).size.width * .02),
                  children: [
                     SizedBox(
                          height: 20,
                        ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       
                        buildContainer(
                            title: "Roll number",
                            // value: "30",
                            ontap: (){
                              Navigator.pushNamed(context, '/rollNumber');
                            },
                            valueColor: Colors.green),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .05,
                        ),
                        buildContainer(
                            title: "Attendance",
                            // value: "100%",
                            valueColor: Colors.green)
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * .05,
                    ),
                    Column(
                      children: [
                        buildContainer2(
                            title: "Analyze personal performance",
                            icon: Icon(Icons.analytics)),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * .05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildContainer(
                          title: "Class groups",
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .05,
                        ),
                        buildContainer(
                            title: "Time table",
                            icon: Icon(Icons.calendar_today_outlined))
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * .05,
                    ),
                    Column(
                      children: [
                        buildContainer2(
                          title: "Home work status",
                          icon: Icon(Icons.home_work)
                          // notification: 100
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * .05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildContainer(title: "Subjects"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .05,
                        ),
                        buildContainer(title: "Group chat \n with students")
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * .05,
                    ),
                    Column(
                      children: [
                        buildContainer2(
                          title: "online exam section",
                          icon: Icon(Icons.online_prediction_sharp ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * .05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildContainer(title: "Class rating"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .05,
                        ),
                        buildContainer(title: "Online class links")
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * .05,
                    ),
                    Column(
                      children: [
                        buildContainer2(
                          title: "Teachers contact number",
                          icon: Icon(Icons.phone),
                        )
                      ],
                    ),SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ))
            ],
          )),
    );
  }

  Widget buildContainer({
    @required String title,
    String value,
    Icon icon,
    Color valueColor,
    Function ontap,
  }) =>
      GestureDetector(
        onTap: ontap,
        child: Card(
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Container(
            width: MediaQuery.of(context).size.width * .4,
            height: 70,
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon != null ? icon : SizedBox(),
                icon != null
                    ? SizedBox(
                        width: 10,
                      )
                    : SizedBox(),
                Text(
                  "$title",
                  textAlign: TextAlign.center,
                ),
                value != null
                    ? Container(
                        child: Text(
                          " $value",
                          style: TextStyle(
                              color: valueColor != null ? valueColor : null,
                              fontSize: 16),
                        ),
                      )
                    : SizedBox()
              ],
            )),
          ),
        ),
      );
  Widget buildContainer2(
          {Function ontap,
          @required String title,
          Icon icon,
          int notification}) =>
      GestureDetector(
        onTap: ontap,
        child: Card(
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .85,
                height: 70,
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    icon != null ? icon : SizedBox(),
                    SizedBox(
                      width: 10,
                    ),
                    Text(title != null ? title : ""),
                  ],
                )),
              ),
              notification != null
                  ? Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: notificationIcon(notification: notification),
                    )
                  : SizedBox()
            ],
          ),
        ),
      );
  Widget notificationIcon({@required int notification}) => Stack(
        alignment: Alignment.topRight,
        children: [
          IconButton(
                icon: Icon(Icons.notifications,color: Colors.white,),
                onPressed: () {},),
         
          Container(
            margin: EdgeInsets.only(top: 10,right: notification<10?10:0),
            width: notification<10?15:25,
            height: 15,
            decoration: BoxDecoration(
                color: Colors.yellow[800],
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Text(
              notification > 99 ? "99+" : notification.toString(),
              style: TextStyle(fontSize: 12),
            )),
          )
        ],
      );
}
