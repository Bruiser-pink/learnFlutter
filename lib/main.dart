import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => MyHomePage(),
        '/about': (BuildContext context) => MyAboutPage()
      },
      initialRoute: '/'
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
  int currentIndex = 0;
  _handleBarTap(int index) {
    setState(() {
      currentIndex = index;
    });
    if(currentIndex == 0) {
      Navigator.pushNamed(context, '/');
    }else {
      Navigator.pushNamed(context, '/about');
    }
  }
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'about'
          ),
        ],
        currentIndex: currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _handleBarTap
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

class MyAboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("this is about page", style: TextStyle(fontSize: 30),),
      ),
    );
  }
}