import 'package:flutter/material.dart';
import '../../components/card.dart';

class Followers extends StatefulWidget {
  @override
  createState() => FollowersState();
}

class FollowersState extends State<Followers> {
  @override
  Widget build(BuildContext context){
    return ListView(
      children: <Widget>[
        CustomCard('grandemayta', 'https://media.licdn.com/dms/image/C4E03AQGmF6ar78rs_g/profile-displayphoto-shrink_200_200/0?e=1538006400&v=beta&t=EkfAcEwyV00DpXSRP7UT_QVQIj0P332kEzkwgXE0jFs'),
        CustomCard('grandemayta', 'https://media.licdn.com/dms/image/C4E03AQGmF6ar78rs_g/profile-displayphoto-shrink_200_200/0?e=1538006400&v=beta&t=EkfAcEwyV00DpXSRP7UT_QVQIj0P332kEzkwgXE0jFs'),
        CustomCard('grandemayta', 'https://media.licdn.com/dms/image/C4E03AQGmF6ar78rs_g/profile-displayphoto-shrink_200_200/0?e=1538006400&v=beta&t=EkfAcEwyV00DpXSRP7UT_QVQIj0P332kEzkwgXE0jFs'),
        CustomCard('grandemayta', 'https://media.licdn.com/dms/image/C4E03AQGmF6ar78rs_g/profile-displayphoto-shrink_200_200/0?e=1538006400&v=beta&t=EkfAcEwyV00DpXSRP7UT_QVQIj0P332kEzkwgXE0jFs'),
        CustomCard('grandemayta', 'https://media.licdn.com/dms/image/C4E03AQGmF6ar78rs_g/profile-displayphoto-shrink_200_200/0?e=1538006400&v=beta&t=EkfAcEwyV00DpXSRP7UT_QVQIj0P332kEzkwgXE0jFs'),
        CustomCard('grandemayta', 'https://media.licdn.com/dms/image/C4E03AQGmF6ar78rs_g/profile-displayphoto-shrink_200_200/0?e=1538006400&v=beta&t=EkfAcEwyV00DpXSRP7UT_QVQIj0P332kEzkwgXE0jFs'),
      ],
    );
  }
}