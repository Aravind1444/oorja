import 'package:flutter/material.dart';
import 'package:oorja/complaints.dart';

import 'notifications.dart';


void main() => runApp(Home());


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("OORJA", style: TextStyle(fontSize: 25),),
      ),

      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 5, 10),
                child: Text(
                  'Sample Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            Container(
              child: ListTile(
                title: Text(
                  'Home',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
              ),
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text(
                  'Complaints',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Complaints(),
                    ),
                  );
                  //createInterstitialAd()
                  // ..load()
                  // ..show();
                },
              ),
            ),
            Container(
              child: ListTile(
                title: Text(
                  'Notifications',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Notifications(),
                    ),
                  );
                },
              ),
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text(
                  'Billing',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
              ),
            ),
            Container(
              child: ListTile(
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
              ),
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text(
                  'More',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.indigo,
            height: 200,
            width: 200,
            child: Text("Oorja"),
          ),
        ),
      ),
    );
  }
}
