import 'package:flutter/material.dart';
import 'package:oorja/complaints.dart';
import 'package:oorja/notifications.dart';
import 'complaints.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_pro/carousel_pro.dart';

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
        title: Text(
          "OORJA",
          style: TextStyle(fontSize: 25),
        ),
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25)),
              child: Container(
                color: Colors.black,
                child: Card(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 40),
                  elevation: 5,
                  child: SizedBox(
                    height:
                        MediaQuery.of(context).size.height > 800 ? 400 : 210,
                    width: double.infinity,
                    child: Carousel(
                      images: [
                        AssetImage('images/cone.png'),
                        AssetImage('images/ctwo.png'),
                        AssetImage('images/cthree.png'),
                        AssetImage('images/cfour.png'),
                      ],
                      showIndicator: false,
                      indicatorBgPadding: 3,
                      borderRadius: true,
                      radius: Radius.circular(4),
                      dotSize: 5,
                      dotSpacing: 20,
                      dotColor: Colors.white70,
                      dotIncreasedColor: Colors.white.withOpacity(.8),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                  child: Text(
                    'Updates',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  )),
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
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      leading: Image(
                        image: NetworkImage(
                            'https://m.economictimes.com/thumb/msid-67394105,width-1200,height-900,resizemode-4,imgsize-68202/complaint-getty.jpg'),
                      ),
                      title: Text(
                        'Complaints',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(
                        'None Pending',
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
                margin: EdgeInsets.fromLTRB(10, 5, 5, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      leading: Image(
                        image: NetworkImage(
                            'https://m.economictimes.com/thumb/msid-67394105,width-1200,height-900,resizemode-4,imgsize-68202/complaint-getty.jpg'),
                      ),
                      title: Text(
                        'Complaints - 01',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text('Issue Solved : Line Broken',
                          style: TextStyle(fontSize: 14)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Text(
                    "Get access to your billing, complaints or ongoing requets",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.8),
                      fontSize: 16,
                    ),
                  )),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: ClipRRect(
                          child: GestureDetector(
                            child: Container(
                              width: 165,
                              child: Text(
                                "Complaints",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              color: Colors.black,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Complaints(),
                                ),
                              );
                              // createInterstitialAd()
                              //   ..load()
                              //  ..show();
                            },
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
                        child: ClipRRect(
                          child: GestureDetector(
                            child: Container(
                              width: 165,
                              child: Text(
                                "Billing",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              color: Colors.black,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home(),
                                ),
                              );
                              // createInterstitialAd()
                              //  ..load()
                              //  ..show();
                            },
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: ClipRRect(
                          child: GestureDetector(
                            child: Container(
                              width: 165,
                              child: Text(
                                "Notifications",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              color: Colors.black,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Notifications(),
                                ),
                              );
                              // createInterstitialAd()
                              // ..load()
                              // ..show();
                            },
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
                        child: ClipRRect(
                          child: GestureDetector(
                            child: Container(
                              width: 165,
                              child: Text(
                                "History",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              color: Colors.black,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home(),
                                ),
                              );
                              //createInterstitialAd()
                              //  ..load()
                              // ..show();
                            },
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
