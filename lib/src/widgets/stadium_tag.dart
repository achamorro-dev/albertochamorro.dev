import 'package:flutter/material.dart';

class StadiumTag extends StatelessWidget {

  final String text;
  final Color color;

  const StadiumTag({Key key, this.text, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Theme.of(context).primaryColor,
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
      label: Text(text, style: TextStyle(color: Colors.white, fontSize: 16)),
    );
  }
}