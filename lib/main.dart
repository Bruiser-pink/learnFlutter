import 'package:flutter/material.dart';

// //自定义widget
// class MyAPP extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//
//     )
//   }
// }
main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Checkbox(
                  value: true,
                  onChanged: (value) => print("Hello World")),
              Text(
                "同意协议",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
      ),
    ),
  ));
}