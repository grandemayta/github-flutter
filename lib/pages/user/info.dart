import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  @override
  createState() => InfoState();
}

class InfoState extends State<Info> {
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
                image: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGmF6ar78rs_g/profile-displayphoto-shrink_200_200/0?e=1538006400&v=beta&t=EkfAcEwyV00DpXSRP7UT_QVQIj0P332kEzkwgXE0jFs')
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              'Gabriel Mayta',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.0),
            child: Text(
              'Frontend Developer at Accenture',
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