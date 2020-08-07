import 'package:flutter/material.dart';
import 'package:oorja/complaints.dart';

import 'home.dart';

void main() => runApp(Navscreen());

class Navscreen extends StatefulWidget {
  @override
  _NavscreenState createState() => _NavscreenState();
}

class _NavscreenState extends State<Navscreen> {
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

      //DRAWER

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


      body: Center(

          child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("https://1.bp.blogspot.com/-r0TZZCGLOuE/Xy10mG3cwGI/AAAAAAAAN_Q/lOPLjgyDTKc3l6KCetEIjpeC1YztuowpgCLcBGAsYHQ/s1920/bgimgonline.png"),
                      fit: BoxFit.cover)
              ),

              //adding overlay buttons

              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: ClipRRect(
                        child: GestureDetector(
                          child: Container(
                            width: 200,
                            child: Text(
                              "Complaints",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            color: Colors.black,
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
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
                      child: ClipRRect(
                        child: GestureDetector(
                          child: Container(
                            width: 200,
                            child: Text(
                              "Home",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25, color: Colors.white,fontWeight: FontWeight.bold),
                            ),
                            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            color: Colors.black,
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
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ],
                ),
              ),
          )
      ),
    );
  }
}
