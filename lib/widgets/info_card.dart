import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InfoCard extends StatelessWidget {
  // the values we need
  final String text;
  final IconData icon;
  //Function onPressed;

  InfoCard({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //  onTap: onPressed(),
      child: Card(
        color: Colors.white70,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.teal,
          ),
          title: Text(
            text,
            style: TextStyle(
                color: Colors.teal,
                fontSize: 15,
                fontFamily: "Source Sans Pro"),
          ),
        ),
      ),
    );
  }
}
