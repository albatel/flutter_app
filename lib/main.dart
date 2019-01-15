import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 0;

  void increase() {
    setState(() {
      num++;
    });
  }

  void decrease() {
    setState(() {
      num--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World!"),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                RaisedButton(
                  onPressed: increase,
                  child: Text("increase!",style: TextStyle(fontSize: 20.0),),
                ),
                RaisedButton(
                  onPressed: decrease,
                  child: Text("decrease!",style: TextStyle(fontSize: 20.0),),
                ),
                Text(num.toString(),style: TextStyle(fontSize: 20.0),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

