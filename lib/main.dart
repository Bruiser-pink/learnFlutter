import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello world',
      home: Scaffold(
        appBar: AppBar(
          title: Text('我是标题'),
        ),
        body: ContentWidget(),
      ),
    );
  }
}

class ContentWidget extends StatefulWidget {
  //生命周期函数尝
  ContentWidget() {
    print('1: StatefulWidget constructors is running');
  }
  @override
  State<StatefulWidget> createState() {
    print("2: createState is running");
    return ContentStateWidget();
  }
}

class ContentStateWidget extends State<ContentWidget> {
  int counter = 0;
  ContentStateWidget() {
    print("3: State Constructors is running");
  }

  @override
  void initState() {
    super.initState();
    print("4: initState is running");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("didChangeDependencies is running");
  }

  @override
  void didUpdateWidget(covariant ContentWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget is running");
  }

  @override
  Widget build(BuildContext context) {
    print("5: State build is running");
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("hello world $counter", style: TextStyle(fontSize: 30),),
          RaisedButton(
            color: Colors.orangeAccent,
            child: Text("counter+1", style: TextStyle(fontSize: 18, color: Colors.white),),
            onPressed: () {
              setState(() {
                counter++;
              });
            },
          )
        ],
      )
    );
  }
}