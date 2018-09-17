import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  final String id;

  Info({ this.id }) : super();

  @override
  createState() => InfoState();
}

class InfoState extends State<Info> {
  final String url = 'https://api.github.com/users/';
  String name = '';
  String bio = '';
  String avatarUrl = '';

  @override
  void initState() {
    super.initState();
    this.getUserDetail();
  }

  Future<String> getUserDetail() async {
    var request = await http.get(url + widget.id);

    setState(() {
      var response = json.decode(request.body);
      name = response['name'] == null ? '' : response['name'];
      bio = response['bio'] == null ? '' : response['bio'];
      avatarUrl = response['avatar_url'];
    });

    return 'Success';
  }

  @override
  Widget build(BuildContext context){
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            width: 160.0,
            height: 160.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(avatarUrl)
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.0),
            child: Text(
              bio,
              style: TextStyle(
                fontSize: 12.0
              ),
            ),
          )
        ],
      ),
    );
  }
}