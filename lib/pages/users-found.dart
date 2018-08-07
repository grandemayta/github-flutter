import 'package:flutter/material.dart';
import '../components/card.dart';

class UsersFound extends StatefulWidget {
  @override
  createState() => UsersFoundState();
}

class UsersFoundState extends State<UsersFound> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Github Flutter"
        ),
      ),
      body: new ListView(
        children: <Widget>[
          CustomCard('grandemayta', 'https://media.licdn.com/dms/image/C4E03AQGmF6ar78rs_g/profile-displayphoto-shrink_200_200/0?e=1538006400&v=beta&t=EkfAcEwyV00DpXSRP7UT_QVQIj0P332kEzkwgXE0jFs')
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(
          Icons.search,
          size: 30.0,
        ),
        onPressed: () {
          print("You clicked!");
        },
      )
    );
  }
}