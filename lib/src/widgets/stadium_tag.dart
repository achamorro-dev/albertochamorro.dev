import 'package:flutter/material.dart';

class StadiumTag extends StatelessWidget {

  final String text;
  final Color color;

  const StadiumTag({Key key, this.text, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: StadiumBorder(),
      color: Theme.of(context).primaryColor,
      onPressed: () {},
      child: Text(text, style: TextStyle(color: Colors.white))
    );
  }
}