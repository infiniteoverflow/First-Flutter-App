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
            onPressed: () {},
          )
        ],
        title: Text("My First Flutter App"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: ListView.builder(

              itemCount: 30,
              itemBuilder:(context,index) {
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Item $index",
                        style: TextStyle(fontSize: 20.0),
                  ),
                );
              }),
        )
      ),
    );
  }
}



