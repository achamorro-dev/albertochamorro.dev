import 'package:flutter/material.dart';

class TwoSidesSlide extends StatelessWidget {
  final Widget leftChild;
  final Widget rightChild;

  const TwoSidesSlide({Key key, this.leftChild, this.rightChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
      children: <Widget>[
        // Left side
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: Container(
            color: Theme.of(context).backgroundColor,
            padding: EdgeInsets.only(right: 30),
            child: leftChild
          ),
        ),
        Flexible(
          flex: 3,
          fit: FlexFit.tight,
          child: Container(
            color: Theme.of(context).backgroundColor,
            padding: EdgeInsets.only(left: 30),
            child: rightChild
          )
        )
      ],
    ));
  }
}
