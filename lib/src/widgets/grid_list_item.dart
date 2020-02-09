import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GridListItem extends StatelessWidget {

  final String text;
  final bool columnMode;

  const GridListItem({Key key, this.text, this.columnMode=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              FontAwesomeIcons.plus,
              size: 20,
              color: Theme.of(context).primaryColor,
            ),
            columnMode ?
              Text(
                text,
                style: Theme.of(context).textTheme.bodyText2
              ) :
              Flexible(
                fit: FlexFit.tight,
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText2
                ),
              )
          ],
      ),
    );
  }
}