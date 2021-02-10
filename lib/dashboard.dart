import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Halaman Dashboard"),
      ),
      body: new Container(
        height: 400,
        padding: const EdgeInsets.all(20),
        child: new Center(
          child: new Column(
            children: [
              new Text(
                "Halaman Dashboard nya ayu fara",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
