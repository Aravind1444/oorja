import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:oorja/settings.dart';

import 'home.dart';
import 'more.dart';
import 'notifications.dart';

void main() => runApp(Complaints());

class Complaints extends StatelessWidget {
  //final DBRef = FireBaseDataBase.instance.reference();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
          appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text(
                'Complaints',
                style: TextStyle(fontSize: 20),
              )),
          body: Center(child: TransfterData())),
    );
  }
}

class TransfterData extends StatefulWidget {
  TransfterDataWidget createState() => TransfterDataWidget();
}

class TransfterDataWidget extends State {
  // Getting value from TextField widget.
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final consumerNumberController = TextEditingController();
  final issueController = TextEditingController();
  final locationController = TextEditingController();
  final personalController = TextEditingController();

  // Boolean variable for CircularProgressIndicator.
  bool visible = false;

  Future webCall() async {
    // Showing CircularProgressIndicator using State.
    setState(() {
      visible = true;
    });

    // Getting value from Controller
    String name = nameController.text;
    String phone = phoneController.text;
    String consumerNumber = consumerNumberController.text;
    String issue = issueController.text;
    String location = issueController.text;
    String personal = personalController.text;

    // API URL
    var url = 'https://paduoweb.000webhostapp.com/submit_data.php';

    // Store all data with Param Name.
//    var dataKey;
    var data = {
      'name': name,
      'phone': phone,
      'consumernumber': consumerNumber,
      'issue': issue,
      'location': location,
      'personal': personal
    };

    // Starting Web Call with data.
    var response = await http.post(url, body: json.encode(data));

    // Getting Server response into variable.
    var message = jsonDecode(response.body);

    // If Web call Success than Hide the CircularProgressIndicator.
    if (response.statusCode == 200) {
      setState(() {
        visible = false;
      });
    }

    // Showing Alert Dialog with Response JSON.
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(message),
          actions: <Widget>[
            FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('Register Complaint',
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold))),
          Container(
              width: 350,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: nameController,
                autocorrect: true,
                decoration: InputDecoration(hintText: 'Enter Name Here'),
              )),
          Container(
              width: 350,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: phoneController,
                autocorrect: true,
                decoration: InputDecoration(hintText: 'Enter you phone number'),
              )),
          Container(
              width: 350,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: consumerNumberController,
                autocorrect: true,
                decoration:
                    InputDecoration(hintText: 'Enter Consumer Number Here'),
              )),
          Container(
              width: 350,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: issueController,
                autocorrect: true,
                decoration: InputDecoration(hintText: 'Problem / Issue '),
              )),
          Container(
              width: 350,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: locationController,
                autocorrect: true,
                decoration:
                    InputDecoration(hintText: 'Enter your Location Here'),
              )),
          Container(
              width: 350,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: personalController,
                autocorrect: true,
                decoration:
                    InputDecoration(hintText: 'Self / Public Complaint'),
              )),
          RaisedButton(
            onPressed: webCall,
            color: Colors.black,
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
            child: Text('SUBMIT NOW'),
          ),
          Visibility(
              visible: visible,
              child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: CircularProgressIndicator())),
        ],
      ),
    )));
  }
}
