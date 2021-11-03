import 'package:flutter/material.dart';

class BizzCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BizzCard'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            getCard(),
            getAvatar(),
          ],
        ),
      ),
    );
  }

  Container getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.only(top: 40.0),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Ahmed Karam',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Text('buildAppsWithAhmed.com'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person_outline),
              Text("T:@buildAppsWithMe"),
            ],
          ),
        ],
      ),
    );
  }

  Container getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
        border: Border.all(
          color: Colors.redAccent,
          width: 1.2,
        ),
        image: DecorationImage(
          image: NetworkImage("https://picsum.photos/300/300"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
