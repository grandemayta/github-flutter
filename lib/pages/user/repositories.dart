import 'package:flutter/material.dart';
import '../../components/card.dart';

class Repositories extends StatefulWidget {
  @override
  createState() => RepositoriesState();
}

class RepositoriesState extends State<Repositories> {
  @override
  Widget build(BuildContext context){
    return ListView(
      children: <Widget>[
        CustomCard('my-angular-app', '', '', 'Javascript'),
      ],
    );
  }
}