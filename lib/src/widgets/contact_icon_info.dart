import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactIconInfo extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;
  final double iconSize;
  final String link;

  const ContactIconInfo({
    Key key,
    this.icon,
    this.color,
    this.text,
    this.link,
    this.iconSize=24
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Icon(
          icon,
          color: color,
          size: iconSize,
        ),
        SizedBox(width: 10,),
        InkWell(
          onTap: () => {
            launch(link)
          },
          child: Text(text, style: Theme.of(context).textTheme.bodyText2.copyWith(
            color: color
          ),)
        )
      ],
    );
  }
}