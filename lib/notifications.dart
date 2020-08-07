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
        title: Text("OORJA", style: TextStyle(fontSize: 20),),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Text("Notifications - Coming Soon", style: TextStyle(fontSize: 30,color: Colors.white),),
      ),
    );
  }
}
