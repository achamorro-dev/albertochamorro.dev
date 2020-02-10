import 'package:flutter/material.dart';

class TwoSidesSlide extends StatelessWidget {
  final Widget leftChild;
  final Widget rightChild;
  final Widget stackedChild;

  const TwoSidesSlide(
      {Key key, this.leftChild, this.rightChild, this.stackedChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
      LayoutBuilder(builder: (context, constraints) {
        return constraints.maxWidth <= 1024
            ? Column(
                children: getTwoSlides(context, true),
              )
            : Row(
                children: getTwoSlides(context, false),
              );
      }),
      stackedChild ?? Container(),
    ]));
  }

  List<Widget> getTwoSlides(BuildContext context, bool columnMode) {
    return [
      Flexible(
        flex: 2,
        fit: FlexFit.tight,
        child: Container(
            color: Theme.of(context).backgroundColor,
            padding: !columnMode ? EdgeInsets.only(right: 30) : null,
            child: columnMode ? Center(child: leftChild) : leftChild),
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
