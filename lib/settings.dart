import 'package:flutter/material.dart';

import 'complaints.dart';
import 'home.dart';
import 'more.dart';
import 'notifications.dart';

void main() => runApp(Settings());

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coming Soon'),
        backgroundColor: Colors.black,
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
                      builder: (context) => Settings(),
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
                      builder: (context) => Settings(),
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
                      builder: (context) => More(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: Text(
          'Coming Soon',
          style: TextStyle(fontSize: 25),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
