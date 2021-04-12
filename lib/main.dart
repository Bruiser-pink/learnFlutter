import 'package:flutter/material.dart';

class MycountWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MycountState();
  }
}

class MycountState extends State<MycountWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             RaisedButton(
               color: Colors.redAccent,
               child: Text("+1", style: TextStyle(fontSize: 18, color: Colors.white),),
               onPressed: () {
                 setState(() {
                   count++;
                 });
               },
             ),
             RaisedButton(
               color: Colors.orangeAccent,
               child: Text("-1", style: TextStyle(fontSize: 18, color: Colors.white),),
               onPressed: () {
                 setState(() {
                   count--;
                 });
               },
             )
           ],
         ),
         Text('当前计数$count', style: TextStyle(fontSize: 30),),
       ]
    );
  }
}

//自定义widget
class MyAPP extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Home'),
          ),
          body: MycountWidget()
      ),
    );
  }
}

main(List<String> args) {
  runApp(MyAPP());
}