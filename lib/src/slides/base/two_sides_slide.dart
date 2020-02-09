import 'package:flutter/material.dart';

class TwoSidesSlide extends StatelessWidget {
  final Widget leftChild;
  final Widget rightChild;

  const TwoSidesSlide({Key key, this.leftChild, this.rightChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Row(children: getTwoSlides(context),);
        })
    );
  }

  List<Widget> getTwoSlides(BuildContext context) {
    return [
      Flexible(
        flex: 2,
        fit: FlexFit.tight,
        child: Container(
            color: Theme.of(context).backgroundColor,
            padding: EdgeInsets.only(right: 30),
            child: leftChild),
      ),
      Flexible(
          flex: 3,
          fit: FlexFit.tight,
          child: Container(
              color: Theme.of(context).backgroundColor,
              padding: EdgeInsets.only(left: 30, right: 20),
              child: rightChild))
    ];
  }
}
