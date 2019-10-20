import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../components/card.dart';

class Users extends StatefulWidget {
  final String id;

  Users({ this.id }) : super();

  @override
  createState() => UsersState();
}

class UsersState extends State<Users> {
  final String url = 'https://api.github.com/search/users?q=';
  List data;

  @override
  void initState() {
    super.initState();
    this.getUsers();
  }

  Future<String> getUsers() async {
    var request = await http.get(url + widget.id);

    setState(() {
      var response = json.decode(request.body);
      data = response['items'];
    });

    return 'Success';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Social Dev"
        ),
      ),
      body: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext contex, int index) {
          return CustomCard(data[index]['login'], data[index]['avatar_url'], '/users/detail');
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.search,
          size: 30.0,
        ),
        onPressed: () => Navigator.pop(context),
      )
    );
  }
}
