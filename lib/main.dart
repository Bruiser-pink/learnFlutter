import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

main(List<String> args) {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  static getInfo() async {
    try {
      var result = await new Dio().get('https://easytrave.xyz');
      result = null;
      if(result == null) {
        throw 'get info Error';
      }
      print(result);
    } catch(e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello world',
      home: Scaffold(
        appBar: AppBar(
          title: Text('我是标题'),
        ),
        body: Column(
          children: [
            Text(
              'textAlign：文本对齐方式，比如TextAlign.centermaxLines\n：最大显示行数，比如1overflow：超出部分显示方式，比如TextOverflow.ellipsistextScaleFactor：\n控制文本缩放，比如1.24',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            TextButton(onPressed: () => print('FlatButton'), child: Text('textButton')),
            TextButton(onPressed: () => getInfo(), child: Text('fetch network request', style: TextStyle(fontSize: 20),))
          ],
        )
      ),
    );
  }
}

