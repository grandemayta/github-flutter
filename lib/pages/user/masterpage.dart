import 'package:flutter/material.dart';
import './info.dart';
import './followers.dart';
import './repositories.dart';

class UserMasterpage extends StatefulWidget {
  final String id;

  UserMasterpage({ this.id }): super();

  @override
  createState() => UserMasterpageState();
}

class UserMasterpageState extends State<UserMasterpage> with SingleTickerProviderStateMixin {
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
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: new TabBarView(
        children: <Widget>[
          new Info(id: widget.id),
          new Followers(id: widget.id),
          new Repositories(id: widget.id)
        ],
        controller: tabController
      ),
      bottomNavigationBar: TabBar(
        labelColor: Colors.orangeAccent,
        indicatorColor: Colors.deepOrangeAccent,
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