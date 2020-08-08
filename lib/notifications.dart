import 'package:flutter/material.dart';

void main() => runApp(Notifications());

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Notifications",
            style: TextStyle(fontSize: 20),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () async {},
                child: Card(
                  elevation: 5,
                  margin: EdgeInsets.fromLTRB(10, 5, 5, 5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        leading: Image(
                          image: NetworkImage(
                              'https://www.pinclipart.com/picdir/big/153-1530123_automated-alerts-icon-clipart.png'),
                        ),
                        title: Text(
                          'Power Outage - 08/08/2020',
                          style: TextStyle(fontSize: 17),
                        ),
                        subtitle: Text(
                          'There will be a power outage from 12:00pm to........',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {},
                child: Card(
                  elevation: 5,
                  margin: EdgeInsets.fromLTRB(10, 5, 5, 5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        leading: Image(
                          image: NetworkImage(
                              'https://www.pinclipart.com/picdir/big/153-1530123_automated-alerts-icon-clipart.png'),
                        ),
                        title: Text(
                          'Maintainance - 06/08/2020',
                          style: TextStyle(fontSize: 17),
                        ),
                        subtitle: Text(
                          'There is a maintaianace scheduled from 2:00pm to........',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {},
                child: Card(
                  elevation: 5,
                  margin: EdgeInsets.fromLTRB(10, 5, 5, 5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        leading: Image(
                          image: NetworkImage(
                              'https://www.pinclipart.com/picdir/big/153-1530123_automated-alerts-icon-clipart.png'),
                        ),
                        title: Text(
                          'Power Outage - 01/08/2020',
                          style: TextStyle(fontSize: 17),
                        ),
                        subtitle: Text(
                          'There will be a power outage from 9:00am to........',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {},
                child: Card(
                  elevation: 5,
                  margin: EdgeInsets.fromLTRB(10, 5, 5, 5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        leading: Image(
                          image: NetworkImage(
                              'https://www.pinclipart.com/picdir/big/153-1530123_automated-alerts-icon-clipart.png'),
                        ),
                        title: Text(
                          'Line Broken - 27/07/2020',
                          style: TextStyle(fontSize: 20),
                        ),
                        subtitle: Text(
                          'Line broken at Nalancira due to heavy storm.',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
