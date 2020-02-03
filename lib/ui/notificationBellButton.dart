import 'package:flutter/material.dart';

class NotificationBellButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            width: 50,
            child: Icon(
              Icons.notifications,
              color: Theme.of(context).accentColor,
              size: 35,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            width: 20,
            height: 20,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.red,
              ),
              width: 20,
              height: 20,
              child: Center(
                child: Text(
                  '03',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 9,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}