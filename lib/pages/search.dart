import 'package:flutter/material.dart';
import 'users.dart';

class Search extends StatefulWidget {
  @override
  createState() => SearchState();
}

class SearchState extends State<Search> {
  String inputTyped;

  void updateInputSeach(value) {
    setState(() {
      inputTyped = value;
    });
  }

  void goToUsers() {
    var route = new MaterialPageRoute(
      builder: (BuildContext context) => new Users(id: inputTyped)
    );
    Navigator.of(context).push(route);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Social Dev"
        )
      ),
      body: new Padding(
        padding: EdgeInsets.all(10.0),
        child: new TextField(
          decoration: new InputDecoration(
            hintText: 'Search a developer'
          ),
          onChanged: (value) => updateInputSeach(value)
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
        onPressed: () => goToUsers()
      ),
    );
  }
}