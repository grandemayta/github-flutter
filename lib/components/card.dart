import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String nickname;
  final String image;

  CustomCard(this.nickname, this.image);

  @override
  Widget build(BuildContext context) {
    return new Card(
        child: new Column(
          children: <Widget>[
            new ListTile(
              contentPadding: EdgeInsets.all(10.0),
              leading: new Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(this.image)
                  )
                ),
              ),
              title: new Text(nickname),
              onTap: () {
                print('You selected $nickname');
              },
            )
          ],
      ),
    );
  }
}