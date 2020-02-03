import 'package:flutter/material.dart';

class UserTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 40,
          height: 40,
          margin: EdgeInsets.only(right: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset('images/watter.png'),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Alon Zusman',
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Drinking Streak: 1 days',
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}