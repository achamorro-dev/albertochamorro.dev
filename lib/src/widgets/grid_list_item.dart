import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GridListItem extends StatelessWidget {

  final String text;

  const GridListItem({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Icon(
          FontAwesomeIcons.plus,
          size: 20,
          color: Theme.of(context).primaryColor,
        ),
        Text(text)
      ],
    );
  }
}