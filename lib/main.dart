import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: FloatingActionButton(
      child: Icon(Icons.camera),
    ),
      drawer: Drawer(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            FlutterLogo(
              size: 90.0,
            ),
            SizedBox(
              height: 30.0,
            ),
            FlutterLogo(
              size: 90.0,
            ),
            SizedBox(
              height: 30.0,
            ),
            FlutterLogo(
              size: 90.0,
            )
          ],
        ),
      ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.satellite),
          )
        ],
        title: Text("My First Flutter App"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Hello World\n\nWelcome to Flutter",
          style: TextStyle(fontSize: 20.0,
          fontStyle: FontStyle.italic,
          color: Colors.red),
        ),
      ),
    );
  }
}



