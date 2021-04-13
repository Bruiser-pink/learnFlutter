import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Flutter App",
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyStateHomePage();
  }
}

class MyStateHomePage extends State<MyHomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page', style: TextStyle(fontSize: 20),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('current times', style: TextStyle(fontSize: 30, color: Colors.black),),
            Text("$counter", style: TextStyle(fontSize: 40, color: Colors.black12), textAlign: TextAlign.center,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()  {
          setState(() {
            counter++;
          });
        },
        tooltip: "add counter",
        child: Icon(Icons.add),
      ),
    );
  }
}