import 'package:flutter/material.dart';

class User extends StatefulWidget {
  @override
  createState() => UserState();
}

class UserState extends State<User> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new TabBarView(
        children: <Widget>[
          Text('I am user page1!'),
          Text('I am user page2!'),
          Text('I am user page3!')
        ],
        controller: tabController
      ),
      bottomNavigationBar: TabBar(
        controller: tabController,
        tabs: <Widget>[
          Tab(
            child: Icon(Icons.info),
          ),
          Tab(
            child: Icon(Icons.input),
          ),
          Tab(
            child: Icon(Icons.keyboard),
          )
        ],
      ),
    );
  }
}