import 'package:flutter/material.dart';

void main() => runApp(FlutterTutorialApp());

class FlutterTutorialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter tutorial",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter tutorial",
              style: TextStyle(
                fontFamily: "Langar",
              )),
          centerTitle: true,
          backgroundColor: Colors.purple[600],
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('Add'),
          backgroundColor: Colors.purple[600],
        ),
        body: Text(
          'hello world',
          style: TextStyle(
              fontSize: 30.0,
              fontFamily: "Langar",
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              letterSpacing: 2.0,
              color: Colors.orange[900]),
        ),
      ),
    );
  }
}
