import 'package:flutter/material.dart';

class StatTile extends StatelessWidget {

  String title;
  int amount;
  String unit;

  StatTile({String title,
  int amount,
  String unit,});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title.toUpperCase(),
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: amount.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: unit,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}