import 'package:flutter/material.dart';
import './pages/search.dart';
import './pages/users.dart';
import './pages/user/masterpage.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColorDark: Color.fromRGBO(245, 124, 0, 1.0),
    primaryColorLight: Color.fromRGBO(255, 224, 178, 1.0),
    primaryColor: Color.fromRGBO(255, 152, 0, 1.0),
    accentColor: Color.fromRGBO(255, 87, 34, 1.0),
    primaryTextTheme: TextTheme(
      body1: TextStyle(
        color: Color.fromRGBO(33, 33, 33, 1.0)
      ),
      body2: TextStyle(
        color: Color.fromRGBO(117, 117, 117, 1.0)
      ),
    ),
    dividerColor: Color.fromRGBO(189, 189, 189, 1.0),
    buttonColor: Color.fromRGBO(255, 152, 0, 1.0)
  ),
  home: Search(),
  routes: <String, WidgetBuilder>{
    '/search': (BuildContext context) => Search(),
    '/users': (BuildContext context) => Users(),
    '/user': (BuildContext context) => UserMasterpage()
  },
));