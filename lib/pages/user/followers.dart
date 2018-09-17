import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../../components/card.dart';

class Followers extends StatefulWidget {
  final String id;

  Followers({ this.id }) : super();

  @override
  createState() => FollowersState();
}

class FollowersState extends State<Followers> {
  final String url = 'https://api.github.com/users/';
  List data;

  @override
  void initState() {
    super.initState();
    this.getUserFollowers();
  }

  Future<String> getUserFollowers() async {
    var request = await http.get('$url${widget.id}/followers');

    setState(() {
      var response = json.decode(request.body);
      data = response;
    });

    return 'Success';
  }

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: data == null ? 0 : data.length,
      itemBuilder: (BuildContext context, int index) {
        return new CustomCard(data[index]['login'], data[index]['avatar_url']);
      }
    );
  }
}