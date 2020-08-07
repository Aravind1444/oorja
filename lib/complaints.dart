import 'package:flutter/material.dart';

void main() => runApp(Complaints());


class Complaints extends StatefulWidget {
  @override
  _ComplaintsState createState() => _ComplaintsState();
}

class _ComplaintsState extends State<Complaints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("OORJA", style: TextStyle(fontSize: 20),),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Text("Complaints - Coming Soon", style: TextStyle(fontSize: 20,color: Colors.white),),
      ),
    );
  }
}
