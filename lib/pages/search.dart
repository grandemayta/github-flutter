import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  createState() => SearchState();
}

class SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Github Flutter"
        )
      ),
      body: new Padding(
        padding: EdgeInsets.all(10.0),
        child: new TextField(
          decoration: new InputDecoration(
            hintText: 'Search a developer'
          ),
        ),
      ),
      bottomNavigationBar: new RaisedButton(
        child: new Text(
          'Search', 
          style: new TextStyle(
            fontSize: 18.0,
          ),
        ),
        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
        onPressed: () => Navigator.pushNamed(context, '/users-found')
      ),
    );
  }
}