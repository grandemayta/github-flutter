import 'package:flutter/material.dart';
import './pages/search.dart';
import './pages/users-found.dart';

void main() => runApp(new MaterialApp(
  home: Search(),
  routes: <String, WidgetBuilder>{
    "/search": (BuildContext context) => Search(),
    "/users-found": (BuildContext context) => UsersFound()
  },
));