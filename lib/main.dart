import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Github Flutter',
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Text('It is works!'),
        )
      )
    );
  }
}
