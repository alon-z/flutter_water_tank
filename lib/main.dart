import 'package:flutter/material.dart';

import 'ui/userTop.dart';
import 'ui/notificationBellButton.dart';
import 'ui/waterMeter.dart';
import 'ui/statTile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int waterTaken = 400;
  int waterNeed = 2500;
  int glass = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 10,
        backgroundColor: Colors.white,
        title: UserTop(),
        actions: <Widget>[
          NotificationBellButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(25, 30, 25, 25),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 90,
                  height: 90,
                  padding: EdgeInsets.all(1),
                  child: Image.asset(
                    'images/watter.png',
                    width: 80,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                Text(
                  waterTaken.toString(),
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                ),
                WaterMeter(waterTaken, waterNeed),
                Divider(
                  height: 25,
                  color: Colors.grey[300],
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      StatTile(
                        amount: (waterTaken/glass).round(),
                        title: "Glasses",
                        unit: "* 200ml",
                      ),
                      StatTile(
                        amount: 350,
                        title: "Not Water",
                        unit: ' ML',
                      ),
                      StatTile(
                        amount: 2800,
                        title: 'Yesterday',
                        unit: ' ml',
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 25,
                  color: Colors.grey[300],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
