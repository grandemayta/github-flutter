import 'package:flutter/material.dart';
import '../pages/user/masterpage.dart';

class CustomCard extends StatelessWidget {
  final String nickname;
  final String image;
  final String page;
  final String subtitle;

  CustomCard(this.nickname, this.image, [this.page, this.subtitle]);

  @override
  Widget build(BuildContext context) {
    ListTile listTile;

    if (image.isNotEmpty) {
      listTile = ListTile(
        contentPadding: EdgeInsets.all(10.0),
        leading: Container(
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(image)
            )
          ),
        ),
        title: Text(nickname),
        onTap: () {
          if (page.isNotEmpty) {
            var route = new MaterialPageRoute(
              builder: (BuildContext context) => new UserMasterpage(id: nickname)
            );
            Navigator.of(context).push(route);
          }
        },
      );
    }

    if (image.isEmpty && subtitle.isNotEmpty) {
      listTile = ListTile(
        contentPadding: EdgeInsets.all(10.0),
        title: Text(nickname),
        subtitle: Text(subtitle),
        onTap: () {
          if (page.isNotEmpty) Navigator.pushNamed(context, page);
        },
      );
    }

    return Card(
        child: Column(
          children: <Widget>[
            listTile
          ],
      ),
    );
  }
}