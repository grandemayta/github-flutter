import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../../components/card.dart';

class Repositories extends StatefulWidget {
  final String id;

  Repositories({ this.id }) : super();

  @override
  createState() => RepositoriesState();
}

class RepositoriesState extends State<Repositories> {
  final String url = 'https://api.github.com/users/';
  List data;

  @override
  void initState() {
    super.initState();
    this.getRepositories();
  }

  Future<String> getRepositories() async {
    var request = await http.get('$url${widget.id}/repos');

    setState(() {
      var response = json.decode(request.body);
      data = response;
    });
    
    return "Success";
  }

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: data == null ? 0 : data.length,
      itemBuilder: (BuildContext context, int index) {
        return new CustomCard(data[index]['name'], '', '', 'Javascript');
      },
    );
  }
}